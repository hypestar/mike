package dk.stacktrace.mike

class Car {
  String modelNumber
  String modelManufacturer
  String carMake
  String carModel 
  String carType
  int productionYear
  int carScale
  BigDecimal priceDemand

  BigDecimal pricePayed
  String color
  int weight
  String countryOfManufacturer
  String countryCodeOfProduction

  
    static constraints = {
      modelNumber(blank:false, maxSize:12)
      modelManufacturer(blank:false)
      carMake(blank:false)
      carModel(blank:false)
      carType(blank:false)
      productionYear(blank:false, min:1900, max:2012)     
      carScale(blank:false)
      priceDemand(blank:false, max:10000.0)

      pricePayed(nullable:true,blank:true)
      color(nullable:true,blank:true)
      weight(nullable:true,blank:true)
      countryOfManufacturer(nullable:true,blank:true)
      countryCodeOfProduction(nullable:true,blank:true)      
      
    }
}
