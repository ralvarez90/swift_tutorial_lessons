/// VALORES DE RETORNO
///
/// Las funciones y métodos pueden regresar ninguno, uno o más
/// valores por medio de tuplas.
func main() {

  // invocamos función
  let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
  print(bounds, "with type: \(type(of: bounds))")
}

// Run application
main()

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
