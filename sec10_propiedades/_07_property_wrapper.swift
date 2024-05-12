/// PROPERTY WRAPPER
///
/// Un contenedor de propiedades agrega una capa de separación
/// entre el código que administra cómo se almacena una propiedad
/// y el código que define una propiedad. Por ejemplo, si tiene
/// propiedades que proporcionan comprobaciones de seguridad de
/// subprocesos o almacenan sus datos subyacentes en una base
/// de datos, debe escribir ese código en cada propiedad.
///
/// Cuando utiliza un contenedor de propiedad, escribe el código
/// de administración una vez cuando define el contenedor y
/// luego reutiliza ese código de administración aplicándolo
/// a varias propiedades.
///
/// Las property wrappers son una característica poderosa de Swift
/// que te permite agregar un comportamiento adicional a las propiedades
/// de una clase o estructura. Esto se logra mediante la encapsulación
/// de la lógica de acceso y modificación de una propiedad dentro de
/// una clase específica.
///
/// Las wrapped properties tiene un valor especial wrappedValue que
/// devuelve el valor envuelto en cuestión.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // create property wrapper
  @propertyWrapper
  struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
      get { return self.number }
      set { number = min(newValue, 12) }
    }
  }

  // create property with fields
  struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
  }

  // create struct SmallRectangle instances
  var rectangle = SmallRectangle()
  print("rectangle.height: \(rectangle.height)")

  // change state
  rectangle.height = 10
  print("rectangle.height: \(rectangle.height)")

  // change state
  rectangle.height = 24
  print("rectangle.height: \(rectangle.height)")
}

// Run application
main()
