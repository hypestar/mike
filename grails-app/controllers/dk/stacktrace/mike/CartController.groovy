package dk.stacktrace.mike

import dk.stacktrace.mike.Car
import dk.stacktrace.mike.Cart

class CartController {

    def index = { 
      redirect(action:"show")
    }

    def add = { 
      Cart cart = session["cart"]
      Car car = Car.get(params.id)

      cart.addToCart(car)
      println "car has been added to cart"
      println "Car " + car.modelNumber
      println cart.calcTotalPrice()
      flash.message = "Car has been added to your shopping cart"
      redirect(action:"show")

    }

    def remove = { 
      Cart cart = session["cart"]
      cart.removeFromCart(params.int('id'));
      redirect(action:"show")
    }

    def show = { 

    }
}
