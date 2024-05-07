/// ENUMERACIONES Y SWITCH
///
/// Podemos matchar de forma individual los valores de una enumeración
/// dentro de los casos de un switch.
/// 
/// Al igual que cualquier otro switch, puede emplear el caso default
/// dentro de este.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // create some enum
  enum CompassPoint {
    case north, south, east, weast
  }

  let directionToHead: CompassPoint = .south
  switch directionToHead {
  case .north:
    print("Lots of planets have a north")
  case .south:
    print("Watch out for penguins")
  case .east:
    print("Where the sun rises")
  case .weast:
    print("Where the skies are blue")
  }
}

// Run application
main()
