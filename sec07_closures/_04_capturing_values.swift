/// CAPTURING VALUES
///
/// En el contexto de las closures, estas puedan capturar constantes
/// y variables dentro del contexto en el que son declaradas, es decir
/// acceden al estado y lo mantienen del bloque contenedor en el que
/// son definidas.
///
/// Notas:
/// - Los closures son objetos, es decir son referencias y por lo tanto
/// se pasan como referencias.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // get incrementor
  let incrementorByTwo = makeIncrementor(amount: 2)
  let incrementorByFive = makeIncrementor(amount: 5)

  for _ in 1...10 {
    print(incrementorByTwo())
    print(incrementorByFive())
    print("-")
  }
}

/// Make ingrementor
func makeIncrementor(amount: Int) -> () -> Int {
  var runningTotal = 0

  func incrementer() -> Int {
    runningTotal += amount
    return runningTotal
  }

  return incrementer
}

// Run application
main()
