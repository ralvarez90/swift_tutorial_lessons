/// CLOSURE EXPRESIONS
///
/// La sintaxis de una expresión closure es de la forma
/// { (parameters) -> ReturnType in
///     <#statements#>
/// }
///
/// donde los parámetros dentro de una expresión pueden ser
/// inout o normales.
///
/// Los closures por expresión nos permiten  pasar directamente
/// funciones como argumentos o como valores de retornos sin
/// tener que definir primero antes dicha función a utilizar.
///
/// El inicio del cuerpo de un closure inicia posterior a la
/// palabra reservada in.
///
/// La implementación de un closure por expresión se puede
/// simplificar en algunas ocuaciones.
///
/// Existen además métodos asociados a operadores dependiendo
/// del tipo de dato de los operandos. Esto nos permite aún
/// más simplificar algunos closures que se pasan como
/// argumento.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // define string array
  let names = [
    "Peter",
    "John",
    "Angela",
    "Miriam",
    "Tony",
    "Bruce",
  ]

  // use closure expressin as argument
  let someNames1 = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
  })

  // use infering type
  let someNames2 = names.sorted(by: { s1, s2 in return s1 > s2 })
  let someNames3 = names.sorted(by: { s1, s2 in s1 > s2 })

  // use shorthand arguments name
  let someNames4 = names.sorted(by: { $0 > $1 })
  let someNames5 = names.sorted(by: >)

  // show sorted names
  print("Sorted array someNames1: \(someNames1)")
  print("Sorted array someNames2: \(someNames2)")
  print("Sorted array someNames3: \(someNames3)")
  print("Sorted array someNames4: \(someNames4)")
  print("Sorted array someNames5: \(someNames5)")
}

// Run application
main()
