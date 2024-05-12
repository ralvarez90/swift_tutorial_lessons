/// NAMED PARAMETERS
///
/// En implementaciones de funciones y métodos, podemos asignar
/// un nombre a los parámetros con la finalidad de que al invocarse
/// se use dicho nombre para establer el valor. También se le puede
/// asignar una especia de alias a dichos parámetros con nombre.
///
/// Se establece _ para evitar colocar el nombre de la variable
/// al invocar la función.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // show examples
  showExample01()
  showExample02()
}

func showExample01() {

  // structura
  struct Color {

    let red, green, blue: Double

    init(red: Double, green: Double, blue: Double) {
      self.red = red
      self.green = green
      self.blue = blue
    }

    init(white: Double) {
      self.red = white
      self.green = white
      self.blue = white
    }

    func getTuple() -> (Double, Double, Double) {
      return (red, green, blue)
    }
  }

  // instaces
  let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
  print(magenta.getTuple())
  let halfGray = Color(white: 0.5)
  print(halfGray.getTuple())
}

func showExample02() {

  // create struct
  struct Celsius {

    // properties
    var temperaturInCelsius: Double = 0.0

    var description: String {
      return "Celsius amount: \(temperaturInCelsius)"
    }

    // inits
    init(fromFahrenheit fahrenheit: Double) {
      temperaturInCelsius = (fahrenheit - 32.0) / 1.8
    }

    init(fromKelvin kelvin: Double) {
      temperaturInCelsius = kelvin - 273.15
    }

    init(_ celsius: Double) {
      temperaturInCelsius = celsius
    }
  }

  // create instance
  let bodyTemperature = Celsius(37.5)
  print("bodyTemperature: \(bodyTemperature.description)")

  let zeroTemperature = Celsius(fromKelvin: 273.15)
  print("zeroTemperature: \(zeroTemperature.description)")
}

// Run application
main()
