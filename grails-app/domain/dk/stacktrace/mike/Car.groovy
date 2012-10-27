package dk.stacktrace.mike

class Car {
  String serialNumber
  String carMake
  String carType
  String carModel
  int carScale
  BigDecimal price
  int productionYear
  
    static constraints = {
      serialNumber(blank:false, maxSize:12)
      carMake(blank:false)
      carType(blank:false)
      carModel(blank:false)
      carScale(blank:false)
      price(blank:false, max:10000.0)
      productionYear(blank:false, min:1900, max:2012)
    }
}
