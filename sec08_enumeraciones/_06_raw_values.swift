/// RAW VALUES
///
/// Como alternativa a valores asociados dentro de una enumeración, los
/// casos dentro de una enumeración pueden almacenar valores por default
/// llamadaos raw values.
///
/// Los raw values pueden ser strings, caracteres, cualquier tipo de entero
/// o números flotantes.
///
/// Los valores asociados se establecen cuando crea una nueva constante
/// o variable basada en uno de los casos de la enumeración y pueden ser
/// diferentes cada vez que lo hace.
///
/// Podemos asignar de forma implícita raw values dentro de las
/// enumeraciones.
///
/// Cada case dentro de una enumeración con raw values asociados tiene
/// una propiedad rawValue que retorna jsutamente el valor concreto
/// de dicho case.
///
/// Notas:
/// - Los valores brutos no son lo mismo que los valores asociados. Los
/// valores sin procesar se establecen en valores precargados cuando
/// define por primera vez la enumeración en su código, como los tres
/// códigos ASCII anteriores. El valor bruto para un caso de enumeración
/// particular es siempre el mismo.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ")
    let _ = readLine()
  }

  // enum with raw values
  enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
  }

  // implicit assigment raw values
  enum Planet: Int {
    case mercury = 1
    case venus, earth, mars, jupiter, saturn, uranus, neptune
  }

  // show planets
  print("Planet.mercury: \(Planet.mercury)")
  print("Planet.earth  : \(Planet.earth)")

  // other enum with String raw values
  enum CompassPoint: String {
    case north, south, east, weast
  }

  // show points
  print("CompassPoint.north: \(CompassPoint.north)")
  print("CompassPoint.south: \(CompassPoint.south)")
}

// Run application
main()
