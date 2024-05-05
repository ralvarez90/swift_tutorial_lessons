/// RANGE OPERATORS
///
/// 1. Close Range Operator
/// El operador a...b define un rango de enteros en el intervalo
/// cerrado [a, b].m Ver ejemplo 03.
///
/// 2. Half-Open Range Operator
/// El operadro a..<b devuelve un rango de enteros en el interavalo
/// [a, b). Ver ejemplo 02.
///
/// 3. One-Sided Ranges
/// Dados arreglos conformados, podemos iterar sobre subrangos de
/// dichos arreglos. Ver ejemplo 03.
///
/// 4. Los rangos también son objetos por los cuales pueden ser
/// asignados como referencias a nombres de variables. Ver
/// ejemplo 04.
///
func main() {
  showExample01()
  showExample02()
  showExample03()
  showExample04()
}

/// Uso de close-range operator
func showExample01() {
  print("EXAMPLE 01. Using close range operator a...b")

  /// a...b
  for i in 1...10 {
    print("Hello World #\(i)")
    if i == 10 {
      print()
    }
  }
}

/// Uso de half-open range opeartor
func showExample02() {
  print("EXAMPLE 02. Using a half-close range operator a..<b")

  // arreglo de strings
  let names: [String] = ["John", "Alex", "Petter", "Brian", "Jack"]
  let totalNames: Int = names.count
  for i in 0..<totalNames {
    print("Person \(i+1) is called \(names[i])")
  }

  print()
}

/// Uso de one-sided ranges
func showExample03() {
  print("EXAMPLE 03. Using one-sided ranges in arrays")

  // arreglo de strings
  let names: [String] = ["Peter", "John", "Will", "Tom"]

  // [2...]
  print("names[2...]")
  for name: String in names[2...] {
    print(name, terminator: ", ")
  }

  print()

  // [...2]
  print("names[...2]")
  for name: String in names[...2] {
    print(name, terminator: ", ")
  }

  print("\n")
}

/// Usi de rangos como variables
func showExample04() {
  print("EXAMPLE 04. Using range as a variable.")

  // closerange<int> variable
  let sliceRange: ClosedRange<Int> = 1...6
  print("Type of \(sliceRange): ", type(of: sliceRange))

  while true {
    let tiro = Int.random(in: 1...6)
    print("Tiro: \(tiro)")
    if tiro == 6 {
      print("Puntuación máxima: \(tiro)")
      break
    }
  }

  print()
}

// Run application
main()
