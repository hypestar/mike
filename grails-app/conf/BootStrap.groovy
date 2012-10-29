import grails.util.GrailsUtil
import dk.stacktrace.mike.User

class BootStrap {

    def init = { servletContext ->
    switch(GrailsUtil.environment){ 
    case "development" :

      def admin = new User(userName:"admin", password:"wordpass", role:"admin" )
      admin.save()
      if(admin.hasErrors()){ 
	println admin.errors
      }

      def jdoe = new User(userName:"jdoe", password:"password", role:"user")
      jdoe.save()
      if(jdoe.hasErrors()){ 
	println jdoe.errors
      }
    }
    }
    def destroy = {
    }
}
