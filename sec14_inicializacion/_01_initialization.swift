/// INITIALIZATION
///
/// La inicialización es el proceso de preparar una instancia de una clase,
/// estructura o enumeración para su uso. Este proceso implica establecer
/// un valor inicial para cada propiedad almacenada en esa instancia y
/// realizar cualquier otra configuración o inicialización necesaria antes
/// de que la nueva instancia esté lista para su uso.
///
/// Las instancias de tipos de clase también pueden implementar un desinicializador,
/// que realiza cualquier limpieza personalizada justo antes de que se desasigne
/// una instancia de esa clase.
///
/// Se emplea el método init para especitifar una inicializaición en cuestrión,
/// puede sobrecargarse.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // create struct
  struct Fahrenheit {

    // instance property
    var temperature: Double

    // constructor
    init() {
      temperature = 32.0
    }
  }

  struct Celsius {

    // instance property
    var temperatureInCelsius: Double

    // constructor1
    init(fromFahrenheit f: Double) {
      temperatureInCelsius = (f - 32.0) / 1.8
    }

    init(fromKelvin k: Double) {
      temperatureInCelsius = k - 273.15
    }
  }

  // example 01
  let f = Fahrenheit()
  print("The defaykt temperature is: \(f.temperature) ° Fahrenheit")

  // exmaple 02
  let boilingPointOfWhater = Celsius(fromFahrenheit: 212.0)
  let freezingPointOfEWhater = Celsius(fromKelvin: 273.15)
}

// Run application
main()
