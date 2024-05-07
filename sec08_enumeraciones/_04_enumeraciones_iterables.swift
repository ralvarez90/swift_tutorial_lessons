/// ENUMERACIONES ITERABLES
///
/// Podemos crear enumeraciones iterables si estas se
/// extienden de la clase CaseIterable.
///
/// Además de hacer enumeraciones iterables, el heredar
/// de CaseIterable agrega propiedades y métodos que
/// podemos emplear.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // enumeración iterables
  enum Beverage: CaseIterable {
    case cofee, tea, juice
  }

  // total de valores en enumeración
  print("Total cases in Beverage Enum: \(Beverage.allCases.count)")
  for _case in Beverage.allCases {
    print("- \(_case)")
  }
}

// Run application
main()
