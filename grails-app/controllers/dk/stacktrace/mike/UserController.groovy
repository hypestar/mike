package dk.stacktrace.mike

import org.springframework.dao.DataIntegrityViolationException
import dk.stacktrace.mike.User

class UserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

  def beforeInterceptor = [action:this.&auth]

  def auth(){ 
    if((!session.user || !session.user.isAdmin()) && actionName == "create"){ 
      flash.message = "Only administrators are allowed to create new users"
      redirect(controller: "user", action: "login")
      return false
    }
  }

    def index() {
        redirect(action: "list", params: params)
    }

    def login = { 
      def String userNameCookie = request.getCookie("username")
      flash.message = "Username from cookie ${userNameCookie}"
      [userNameCookie: userNameCookie]
    }

    def logout = { 
	flash.message = "Goodbye ${session.user}"
      	session.user = null

	redirect(action:"login")
    }

    def authenticate = { 
      def user = User.findByUserNameAndPassword(params.userName, params.password)
      
      if(user){ 
	session.user = user
	response.setCookie("username", "${user.userName}", 60000)
	flash.message = "Welcome ${user}"
	redirect(controller:"car", action:"list")
      }else{ 
	flash.message = "Sorry, ${params.userName}. Please try again"
	redirect(action:"login")
      }
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create() {
        [userInstance: new User(params)]
    }

    def save() {
        def userInstance = new User(params)
        if (!userInstance.save(flush: true)) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def show(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def edit(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def update(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'user.label', default: 'User')] as Object[],
                          "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }
}
