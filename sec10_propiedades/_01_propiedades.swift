/// PROPERTIES
///
/// Las propiedades son valores asociados contenidos dentro de clases,
/// estructuras o enumeraciones.
///
/// Pude además definir observadores a propiedades que monitorean cambios
/// de estado en tiempo de ejecución.
///
/// También puede utilizar un contenedor de propiedades para reutilizar
/// el código en el captador y definidor de múltiples propiedades.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // define new structura
  struct FixedLengthRange {
    var firstValue: Int
    let length: Int
  }

  // create instance
  var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
  rangeOfThreeItems.firstValue = 6
  print("rangeOfThreeItems: \(rangeOfThreeItems), with type: \(type(of: rangeOfThreeItems))")
}

// Run application
main()
