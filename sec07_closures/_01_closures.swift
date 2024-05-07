/// CLOSURES
///
/// Los closures son bloques de funcionalidad autónomos que se pueden transmitir
/// y utilizar en su código. Los closures en Swift son similares a las funciones anónimas,
/// lambdas y bloques de otros lenguajes de programación.
///
/// Los closures pueden capturar y almacenar referencias a cualquier constante
/// y variable del contexto en el que están definidos. Esto se conoce como cerrar
/// sobre esas constantes y variables. Swift maneja toda la gestión de la memoria de
/// la captura por usted.
///
/// Las funciones anidadas son un medio conveniente para nombrar y definir bloques de
/// código autónomos como parte de una función más grande. Sin embargo, a veces es
/// útil escribir versiones más cortas de construcciones similares a funciones sin
/// una declaración y un nombre completos.
///
/// Esto es particularmente cierto cuando trabaja con funciones o métodos que toman
/// funciones como uno o más de sus argumentos.
///
/// Las closure expressions son una forma de escribir closures en línea en una sintaxis
/// breve y enfocada. Las expresiones de closure proporcionan varias optimizaciones
/// de sintaxis para escribir cierres en forma abreviada sin pérdida de claridad o
/// intención.
///
/// Los siguientes ejemplos de expresiones de cierre ilustran estas optimizaciones
/// refinando un solo ejemplo del método ordenado(por:) en varias iteraciones,
/// cada una de las cuales expresa la misma funcionalidad de una manera más
/// concisa.
///
/// Método sorted
/// Recibe como argumento un un closure (una función) que toma dos argumentos del
/// mismo tipo de los elementos del array y retorna un booleano.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ")
    let _ = readLine()
  }

  // array of strings
  var arrayNames: [String] = [
    "Chris",
    "Tony",
    "Bruce",
    "John",
    "Peter",
  ]

  // usign for callback sort criteria
  func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
  }

  // sorted array name
  arrayNames = arrayNames.sorted(by: backward)

  // show sorted array
  print("Sorted array: \(arrayNames)")
}

// Run application
main()
