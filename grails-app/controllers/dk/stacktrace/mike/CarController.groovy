package dk.stacktrace.mike



class CarController {
  
  def beforeInterceptor = [action:this.&auth]
  def scaffold = dk.stacktrace.mike.Car

  def auth(){ 
    if((!session.user || !session.user.isAdmin()) && actionName == "create"){ 
      flash.message = "Only administrators are allowed to create new cars"
      redirect(controller: "user", action: "login")
      return false
    }
  }

  

}
