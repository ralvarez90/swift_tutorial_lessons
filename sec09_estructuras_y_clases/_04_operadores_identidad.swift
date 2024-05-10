/// OPERADORES DE INTENTIDAD
///
/// Debido a que las clases son tipos referencia, es posible que múltiples
/// constantes y variables hagan referencia a la misma instancia única de
/// una clase detrás de escena.
///
/// Empleamos === para verificar si dos elementos son exactamente el mismo
/// dato u objeto. Estos solo se usa con operandos de tipo objeto.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // use identity operadores
  let someInteger: Int = 123
  let otherInteger: Int = 123

  // error
  // print("someInteger  == otherInteger: \(someInteger  == otherInteger)")
  // print("someInteger === otherInteger: \(someInteger === otherInteger)")
}

// Run application
main()
