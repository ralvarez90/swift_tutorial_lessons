/// SENTENCIAS DE TRANSFERENCIA DE CONTROL
///
/// Son palabras reservadas que permiten cambiar el
/// flujo de nuestros programas.
///
/// Dichas sentencias son:
/// - continue
/// - break
/// - fallthrough
/// - return
/// - throw
///
/// Donde continue permite saltar iteraciones dentro deun loop, break
/// rompe el fjujo de un bloque o un swift, fallthrough continua
/// evaluando los casos dentro de un switch, return finaliza la
/// ejecución de una función y throw lanza una expeción.
///
/// Los bucles como el while pueden etiquetarse aunque no se suele
/// utilizar.
///
/// La palabra reservada defer sirve para establecer un bloque cuya
/// ejecución será diferida al final de la ejecución de su bloque contenedir.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ")
    let _ = readLine()!
  }

  print("Hello World in swift language!".uppercased())
}

// Run application
main()
