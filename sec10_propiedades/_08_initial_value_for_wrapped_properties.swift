/// INITIAL VALUES IN WRAPPED PROPERTIES
///
///
func main() {

  // end message
  defer {
    print("\nPress any key to continue  . . . ", terminator: "")
    let _ = readLine()
  }

  @propertyWrapper
  struct SmallNumber {
    private var maximum: Int
    private var number: Int

    var wrappedValue: Int {
      get { return number }
      set { number = min(newValue, maximum) }
    }

    init() {
      maximum = 12
      number = 0
    }

    init(wrappedValue: Int) {
      maximum = 12
      number = min(wrappedValue, maximum)
    }

    init(wrappedValue: Int, maximum: Int) {
      self.maximum = maximum
      number = min(wrappedValue, maximum)
    }
  }

  // rectangle struct
  struct ZeroRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int
  }

  // instance
  var zeroRect = ZeroRectangle()
  zeroRect.height = 1
  zeroRect.width = 1
  print("zeroRect.height: \(zeroRect.height)")
  print("zeroRect.width : \(zeroRect.width)")
}

// Run application
main()
