/// PROPIEDADES DE SOLO LECTURA
///
/// Las propiedades que tienen getter pero no setter se conocen
/// como propiedades de solo lectura. Podría pensarse usar la
/// let pero esto solo se usa para propiedaeds constantes. Asignamos
/// el valor a una variable de solo lectura usando una expresión, que
/// se evaluará cada que leamos dicha propiedad.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // structure with readonly properties
  struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0

    // readobnly property
    var volume: Double {
      return width * height * depth
    }
  }

  // create instance
  let fourByFiveByTwo = Cuboid(width: 4, height: 5, depth: 2)
  print("fourByFiveByTwo: \(fourByFiveByTwo.volume)")
}

// Run application
main()
