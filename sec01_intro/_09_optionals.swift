/// OPTIONALS
///
/// Son datos cuya referencia almacenada puede apuntar
/// a nil, estos pueden o no tener un valor concreto.
///
/// El tipo de dato de un optional se establece empleando
/// el signo ? como postfijo a cualquier tipo de dato.
///
/// Existen diversas formas para manejar los objetos
/// Optional. La forma más sencilla es usando un simple
/// if para verificar si dicho optional no es nil y usar
/// el operador ! para desempacar el correspondiente valor
/// en cuestión, ver ejemplo 01.
///
/// El segundo mecanismo se denomina Optional Binding, que
/// básicamente consiste en enlazar el optional a una variable
/// en caseo de que esta no sea nil, esto se realiza mediante
/// if let <#constantName#> = <#someOptional#> {
///     <#statements#>
/// }
/// como se puede ver en el ejemplo 02. Es posible agregar una
/// condición else.
///
/// Al momento de desempacar un valor dentor de un optional
/// usando Optional Binding, podemos agregar más declaraciones
/// y condiciones en el mismo bloque if let. Ver ejemplo 03.
///
/// Provisión de un fallback value
/// Consiste en establecer un valor default empleando el operador
/// de doble signo de interrogación. Si el optional apunta a nil,
/// entonces se tomará el valor default, si no se desempacará
/// de forma nomrla. Ver ejemplo 04.
///
/// Force unwrapping
/// Se emplea el operador ! solo cuando está absolutamente
/// seguro de que el optional no es nil. Ver ejemplo 05.
///
/// Notas:
/// - La función fatalError detiene la ejecución del programa
/// lanzando un mensaje de error.
func main() {
  showExample01()
  showExample02()
  showExample03()
  showExample04()
  showExample05()
}

/// Uso de if != nil
func showExample01() {

  // definicion de optional
  let posibleNumber: String = "123"
  let convertedNumber: Int? = Int(posibleNumber)

  // uso de if y !
  if convertedNumber != nil {
    print("convertedNumbers is:", convertedNumber!)
  }
}

/// Uso de Optional Binding
func showExample02() {

  // string a convertir
  let possibleNumber: String = "123"

  // optional binding
  if let actualNumber = Int(possibleNumber) {
    print("The string '\(possibleNumber)' has an integer value of \(actualNumber)")
  } else {
    print("The string '\(possibleNumber)' couldn't be converted to an integer")
  }
}

/// Uso de Optional Binding, más condiciones
func showExample03() {
  if let firstNumber = Int("4"), let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100
  {
    print("\(firstNumber) < \(secondNumber) < 100")
  }
}

/// Uso de fallback value (??)
func showExample04() {
  let myName: String? = nil
  let greetingMessage: String = "Hello, " + (myName ?? "friend") + "!"
  print(greetingMessage)
}

/// Uso de guard let y !
func showExample05() {
  // obtención de optional
  let possibleNumber: String = "123"
  let convertedNumber: Int? = Int(possibleNumber)

  // si number no se puede obtener ejeucta bloque
  guard let _ = convertedNumber else {
    fatalError("The number was invalid!")
  }
}

/// Run application
main()
