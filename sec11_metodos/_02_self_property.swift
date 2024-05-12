/// SELF PROPERTY
///
/// Cualquier instancia de un tipo de dato tiene una propiedad
/// implícita llamada self que hace referencia a si mismo.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  /// Represents al points in 2D
  struct Point {
    var x = 0.0
    var y = 0.0
    func istToTheRigthtOf(x: Double) -> Bool {
      return self.x > x
    }
  }

  // instance of point
  let somePoint = Point(x: 4.0, y: 5.0)
  if somePoint.istToTheRigthtOf(x: 1.0) {
    print("This point is to the right of the line where x == 1.0")
  }
}

// Run application
main()
