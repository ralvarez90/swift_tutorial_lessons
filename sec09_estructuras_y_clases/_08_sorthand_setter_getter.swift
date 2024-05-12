/// SHORTHAND DE SETTERS
///
/// Si al definir una propiedad calculada (computed property) no define
/// un nombre para el nuevo valor que se establecerá, se utiliza un nombre
/// predeterminado de newValue.
///
/// Además de poder emplear newValue como shorthand dentro del settter,
/// en el getter también podemos omitir declarar variables e
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // def struct
  struct Point {
    var x: Double = 0.0
    var y: Double = 0.0
  }

  // def struct
  struct Size {
    var width: Double = 0
    var height: Double = 0
  }

  // compose struct
  struct AlternativeRect {

    // properties
    var origin = Point()
    var size = Size()
    var center: Point {

      // shorthand in getter
      get {
        return Point(x: origin.x + (size.width / 2), y: origin.y + (size.height / 2))
      }

      // shorthand in setter
      set {
        origin.x = newValue.x - (size.width / 2)
        origin.y = newValue.y - (size.height / 2)
      }
    }
  }

  // create instance of struct AlternativeRect
  var newRect = AlternativeRect()
  newRect.center = Point(x: 123, y: -123)
  print("newRect.center: \(newRect.center)")

}

// Run application
main()
