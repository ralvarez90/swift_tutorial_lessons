/// ESTRUCTURAS Y CLASES
///
/// Son estructuras de datos bien acotados que encapsulan
/// propiedades y métodos. Se emplean para definir nuevos
/// tipos de datos.
///
/// Las instancias de una clase A se crean de la forma
/// let nombreInstancia = A()
///
/// Dada una propiedad p definida dentro de una clase o
/// estructura, se accede a este valor mediante el dot
/// notation.
///
/// Las instancias de las estructuras se almacenan como valor
/// mientras que las de clases como referencias.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // struct example
  struct Resolution {
    var width: Int = 0
    var height: Int = 0
  }

  // class example
  class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
  }

  // create struct instanca
  let fullHD = Resolution(width: 1080, height: 1920)

  // create class instance
  let someVideo = VideoMode()
  someVideo.resolution = fullHD
  someVideo.name = "Learning Swift from Scratch"

  // properties and method access
  print("someVideo.resolution: \(someVideo.resolution)")
}

// Run application
main()
