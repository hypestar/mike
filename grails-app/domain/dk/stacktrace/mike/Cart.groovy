package dk.stacktrace.mike

import dk.stacktrace.mike.User
import dk.stacktrace.mike.Car

class Cart {
  User user
  def cars = []

  Cart(User user)
  {
    this.user = user
  }
  
  def addToCart(Car car){ 
    cars.add(car)
  }

  def removeFromCart(int i){ 
    cars.remove(i)
  }

  def calcTotalPrice(){ 
    def total = 0

    for (car in cars){ 
      total += car.priceDemand
    }
    return total
  }
  
    static constraints = {
    }
}
