/// SOBRESCRITURA DE OBSERVADORES
///
/// Podemos sobrescribir los métodos didSet y willSet a través
/// de la jerarquía de herencia entre clases.
/// 
/// Se emplea final para prevenir la sobrescritura de una
/// propiedad o método.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  class Vehicle {
    var currentSpeed: Double = 0.0
    var description: String {
      return "Traveling at \(currentSpeed) MPH"
    }

    func makeNoise() {
      print("This vehicle makes run run...")
    }
  }

  class Car: Vehicle {
    var gear: Int = 1
    override var description: String {
      return super.description + " in gear \(gear)"
    }
  }

  class AutomaticCar: Car {
    override var currentSpeed: Double {
      didSet {
        gear = Int(currentSpeed / 10.0) + 1
      }
    }
  }

  let automatic = AutomaticCar()
  automatic.currentSpeed = 35
  print("AutomaticCar instance: \(automatic.description)")
}

// Run application
main()
