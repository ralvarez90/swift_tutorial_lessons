/// SOBRESCRITURA
///
/// En clases hijas podemos rescribir propiedaeds y métodos que
/// nos permitirán adaptar el estado o comportamiento de las instancias
/// deacuerdo a como descendemos en la jerarquía de herencia.
///
/// Una subclase puede proporcionar su propia implementación personalizada
/// de un método de instancia, método de tipo, propiedad de instancia,
/// propiedad de tipo o subíndice que de otro modo heredaría de una
/// superclase. Esto se conoce como anulación.
///
/// Para anular una característica que, de otro modo, se heredaría,
/// anteponga a la definición de anulación la palabra clave override.
/// Al hacerlo, se aclara que tiene la intención de proporcionar una
/// anulación y no ha proporcionado una definición coincidente por error.
///
/// La anulación por accidente puede provocar un comportamiento inesperado y
/// cualquier anulación sin la palabra clave override se diagnostica como un
/// error cuando se compila el código.
///
/// La palabra clave override también solicita al compilador Swift que
/// verifique que la superclase de su clase primordial (o una de sus padres) tenga una
/// declaración que coincida con la que proporcionó para la anulación.
///
/// Esta verificación garantiza que su definición primordial sea correcta.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // create super class
  class Vehicle {

    // instance properties
    var currentSpeed: Double = 0.0

    // computed property
    var description: String {
      return "Traveling at \(currentSpeed) MPH"
    }

    // instance method
    func makeNoise() {
      print("Run, run...")
    }
  }

  // create a subclass
  class Train: Vehicle {

    // overriding method
    override func makeNoise() {
      print("Chooo, chooo...")
    }
  }

  // example 01, create isntances
  let train = Train()
  train.currentSpeed = 360
  train.makeNoise()

  // override properties
  class Car: Vehicle {
    var gear = 1
    override var description: String {
      return super.description + " in gear \(gear)"
    }
  }

  // exmaple 02, create isntances
  let myCar = Car()
  myCar.currentSpeed = 180.5
  myCar.gear = 3
  print("myCar with type: \(type(of: myCar))")
  print("myCar: \(myCar.description)")
}

// Run application
main()
