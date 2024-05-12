/// COMPUTED PROPERTIES
///
/// Además de las propiedades almacenadas, las clases, estructuras y
/// enumeraciones pueden definir propiedades calculadas, que en realidad
/// no almacenan un valor. En cambio, proporcionan un captador y un
/// definidor opcional para recuperar y establecer otras propiedades y
/// valores indirectamente.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  /// Struct Point
  struct Point {
    var x = 0.0, y = 0.0
  }

  /// Struct Size
  struct Size {
    var width = 0.0, height = 0.0
  }

  /// Create other struct with fields struct
  struct Rect {
    var origin: Point = Point()
    var size: Size = Size()

    // computed propertiess
    var center: Point {
      get {
        let centerX: Double = origin.x + (size.width / 2)
        let centerY: Double = origin.y + (size.height / 2)
        return Point(x: centerX, y: centerY)
      }

      set(newCenter) {
        origin.x = newCenter.x - (size.width / 2)
        origin.y = newCenter.y - (size.height / 2)
      }
    }
  }

  // create rect example
  var square: Rect = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 0.0))
  let initialSquareCenter: Point = square.center
  print("initialSquareCenter: \(initialSquareCenter)")

  // cambiamos estasdo de propiedad
  square.center = Point(x: 15.0, y: 15.0)
  print("square.origin is now at: \(square.origin.x), \(square.origin.y)")
}

// Run application
main()
