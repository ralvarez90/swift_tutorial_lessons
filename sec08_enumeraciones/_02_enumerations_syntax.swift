/// SINTAXIS DE ENUMERACIONES
///
/// Los valores definidos dentro de una enumeración se conocen como
/// casos de la enumeración.
///
/// Cada valor asociado a un caso de una enumeración define un nuevo
/// tipo de dato.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // define some enumeration
  enum CompassPoint {
    case north
    case south
    case east
    case west
  }

  // show some cases
  print("CompassPoint.north -> \(CompassPoint.north)")
  print("CompassPoint.south -> \(CompassPoint.south)")

  // Other enumeration
  enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
  }

  let myPlanet: Planet = Planet.earth
  print("myPlanet variable is: \(myPlanet), with type: \(type(of: myPlanet))")

  let otherPlanet: Planet = .venus
  print("otherPlante variable is: \(otherPlanet), with type: \(type(of: otherPlanet))")
}

// Run application
main()
