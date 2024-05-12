/// MODIFICACIÓN DE VALUE TYPES CON MÉTODOS DE INSTANCIA
///
/// Recordemos que las estructuras y enumeraciones generan valores y
/// no referencias.
///
/// Si queremos cambiar el estado de instancias de dichos elementos
/// mediante métodos debemos implementar el método con mutating.
///
/// Recordemos que self hace referencia a la instancia en cuestión.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // run examples
  showExample01()
  showExample02()
  showExample03()
}

func showExample01() {
  // structura con métodos que cambian su estado
  struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
      x += deltaX
      y += deltaY
    }
  }

  // create instance
  var somepoint = Point(x: 1.0, y: 1.0)
  somepoint.moveBy(x: 2.0, y: 3.0)
  print("The point is now at: (\(somepoint.x), \(somepoint.y))")
}

func showExample02() {

  // struct point
  struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
      self = Point(x: x + deltaX, y: y + deltaY)
    }
  }

  // create instance
  var somepoint = Point(x: 1.0, y: 1.0)
  somepoint.moveBy(x: 2.0, y: 3.0)
  print("The point is now at: (\(somepoint.x), \(somepoint.y))")
}

func showExample03() {

  // create enumeration
  enum TriStateSwitch {
    // cases
    case off, low, high

    // method
    mutating func next() {
      switch self {
      case .off:
        self = .low
      case .low:
        self = .high
      case .high:
        self = .off
      }
    }
  }

  // create instance
  var ovenLigth = TriStateSwitch.low
  for _ in 1...5 {
    print(ovenLigth)
    ovenLigth.next()
  }

  // final state
  print("Final state of ovenLigth: \(ovenLigth)")
}

// Run application
main()
