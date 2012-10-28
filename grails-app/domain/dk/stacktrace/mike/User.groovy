package dk.stacktrace.mike

class User {
  String login
  String password
  String role = "user"


    static constraints = {
      login(blank:false, nullable:false, unique:true)
      password(blank:false, password:true)
      role(inList:["admin", "user"])
    }

    String toString(){ 
      login
    }
  
  // Avoids that GORM gets confused by isAdmin. Which otherwise would make GORM look for a field named admin. This tells GORM not persist the field admin back to the DB.
  static transients = ['admin']

  boolean isAdmin(){ 
    return role == "admin"
  }
}
