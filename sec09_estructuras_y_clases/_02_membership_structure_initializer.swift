/// INICIALICACIÓN DE MIEMBROS DE ESTRUCTURAS
///
/// En automático podemos pasar las propiedaes de una estructura
/// como si se tratasen de parámetros al inicializar.
///
/// Por otro lado, la palabra reservada mutating se emplea en el
/// contexto de los métodos de las estructucturas y enumeraciones.
///
/// La prescencia de un mutating en la declaración de un método
/// tiene el potencial de modificar la instancia de la estructura
/// o enumeración en la que se llama.
///
/// Las estructuras y enumeraciones son primitivos, y usa pasos
/// por valor.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // create structure
  struct Resolution {
    var width = 0.0
    var height = 0.0
  }

  // memberwise initializer for struct type
  let vga = Resolution(width: 640, height: 480)
  print("vga: \(vga)")

  // example 02
  enum CompassPoint {
    case north, south, east, weast
    mutating func turnNorth() {
      self = .north
    }
  }

  var currentDirection = CompassPoint.east
  let rememberDirection = currentDirection
  currentDirection.turnNorth()

  print("currentDirection : \(currentDirection)")
  print("rememberDirection: \(rememberDirection)")
}

// Run application
main()
