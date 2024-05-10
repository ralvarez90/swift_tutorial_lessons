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
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // struct example
  struct Resolution {
    var width = 0
    var eight = 0
  }

  // class example
  class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
  }

  // create instances
  let someResolution = Resolution()
  let someVideo = VideoMode()

  // properties access
  print("someResolution.width : \(someResolution.width)")
  print(someVideo.frameRate)
}

// Run application
main()
