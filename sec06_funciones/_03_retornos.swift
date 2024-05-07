/// VALORES DE RETORNO
///
/// Las funciones y métodos pueden regresar ninguno, uno o más
/// valores por medio de tuplas.
///
/// Los valores que se retornan por una función pueden ser
/// ignorados asignadolos a un elemento _.
func main() {

  print("EXAMPLE 01. Clling minMax function")
  let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
  print(bounds, "with type: \(type(of: bounds))")
  print()

  print("EXAMPLE 02. Show a simple message")
  sayHelloWorld()
  print()

  print("EXAMPLE 03. Muestra mensaje sin devolver longitud")
  printWithoutCounting(string: "I love Swift!")
}

// Run application
main()

/// Retorna una tupla con el mínimo y máxmo de un array
/// de enteros
func minMax(array: [Int]) -> (min: Int, max: Int) {
  var currentMin = array[0]
  var currentMax = array[0]
  for value in array {
    if value < currentMin {
      currentMin = value
    }

    if value > currentMax {
      currentMax = value
    }
  }

  return (currentMin, currentMax)
}

/// Imprime mensaje de saludo. Implícitamente retorna
/// un Void
func sayHelloWorld() {
  print("Hello World!")
}

/// Imprime un mensaje y retorna la longitud del string
/// que se recibe como argumento.
func printAndCount(string: String) -> Int {
  print(string)
  return string.count
}

/// Imprime mensaje sin retornarn su longitud.
func printWithoutCounting(string: String) {
  let _ = printAndCount(string: string)
}
