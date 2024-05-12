/// HERENCIA
///
/// Una clase puede heredar métodos, propiedades y otras características de otra clase.
/// Cuando una clase hereda de otra, la clase heredera se conoce como subclase y la clase
/// de la que hereda se conoce como superclase.
///
/// La herencia es un comportamiento fundamental que diferencia las clases de otros
/// tipos en Swift.
///
/// Las clases en Swift pueden llamar y acceder a métodos, propiedades y subíndices
/// que pertenecen a su superclase y pueden proporcionar sus propias versiones
/// de esos métodos, propiedades y subíndices para refinar o modificar su comportamiento.
///
/// Las clases también pueden agregar observadores de propiedades a las propiedades
/// heredadas para recibir notificaciones cuando cambie el valor de una propiedad.
///
/// Los observadores de propiedades se pueden agregar a cualquier propiedad,
/// independientemente de si se definió originalmente como una propiedad
/// almacenada o calculada.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // inheritance sintax
  let sintaxis = """
    SINTAXIS OF INHERITANCE
    class SomeClass: SomeSuperClass {
      // body
    }
    """

  // create base class
  class Vehicle {

    // stored property
    var currentSpeed = 0.0

    // computed property
    var description: String {
      return "Traveling at \(currentSpeed) MPH"
    }

    // method
    func makeNoise() {
      print("Run run...")
    }
  }

  // subclass
  class Bicycle: Vehicle {
    // instance properties
    var hasBasket = false
  }

  // show sintaxis
  print(sintaxis)
  print()

  // create instance
  let bycicle = Bicycle()
  bycicle.hasBasket = true
  bycicle.currentSpeed = 180
  bycicle.makeNoise()
  print("bycicle.description: \(bycicle.description)")
}

// Run application
main()
