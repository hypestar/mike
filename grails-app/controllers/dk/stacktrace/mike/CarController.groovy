package dk.stacktrace.mike



class CarController {
  
  def beforeInterceptor = [action:this.&auth]
  def scaffold = dk.stacktrace.mike.Car

  def auth(){ 
    if((!session.user || !session.user.isAdmin()) && (actionName == "create" || actionName == "edit" || actionName == "delete")){ 
      flash.message = "Only administrators are allowed to create/edit/delete cars"
      redirect(controller: "user", action: "login")
      return false
    }
  }

  

}
