import grails.util.GrailsUtil
import dk.stacktrace.mike.User
import dk.stacktrace.mike.Car

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


    def car1 = new Car(
    modelNumber:"4711",
    modelManufacturer:"Tekno",
    carMake:"VW",
    carModel:"Oldbeetle",
    carType:"Sedan",
    productionYear:1958,
    carScale:43,
    priceDemand:600
    )
    car1.save()
    if(car1.hasErrors()){ 
      println car1.errors
    }
     
    def car2 = new Car(
    modelNumber:"9562",
    modelManufacturer:"Tekno",
    carMake:"VW",
    carModel:"Type2",
    carType:"Transporter",
    productionYear:1962,
    carScale:43,
    priceDemand:3500
    )
    car2.save()
    if(car2.hasErrors()){ 
      println car2.errors
    }

    def car3 = new Car(
    modelNumber:"4711",
    modelManufacturer:"Dinkey",
    carMake:"VW",
    carModel:"Oldbeetle",
    carType:"Sedan",
    productionYear:1951,
    carScale:43,
    priceDemand:170
    )
    car3.save()
    if(car3.hasErrors()){ 
      println car3.errors
    }

    def car4 = new Car(
    modelNumber:"50050",
    modelManufacturer:"Minichamps",
    carMake:"VW",
    carModel:"Schwimmwagen",
    carType:"Sedan",
    productionYear:1943,
    carScale:43,
    priceDemand:1100
    )
    car4.save()
    if(car4.hasErrors()){ 
      println car4.errors
    }
    }
  }
  def destroy = {
  }
}
