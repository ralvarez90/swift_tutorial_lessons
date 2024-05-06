import Foundation

/// CICLO FOR-IN
///
/// Swift nos provee de una variedad de mecanismos para
/// controlar el flujo de nuestra aplicación.
///
/// Se el emplea for in para iterar sobre los elementos de
/// una secuencia como arrays, rangos o caracteres de
/// un string.
///
/// Además de iterar rangos podemos emplear la función
/// stride para iterar rangos de enteros, estableciendo
/// lapsos de iteración. Stride se traduce como "paso".
func main() {
  showExample01()
  showExample02()
  showExample03()
  showExample04()
}

/// Use for-in with array
func showExample01() {
  print("EXAMPLE 01. Control flow using for-in statement")

  // string array
  let names: [String] = ["Anna", "John", "Brian", "Jack"]

  // using for-in with string array
  print("Show all names in array:")
  for name in names {
    print("Hello \(name)")
  }

  // new line
  print()
}

/// Use for-in with dict
func showExample02() {
  print("EXAMPLE 02. Use for-in with a dictionary")

  // create some dictionary
  let numberOfLegs = [
    "spider": 8,
    "ant": 6,
    "cat": 4,
  ]

  print("Original dictionary: \(numberOfLegs)")
  for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
  }

  // new line
  print()
}

/// Use for-in with ranges
func showExample03() {
  print("EXAMPLE 03. Use for-in with integer ranges")

  for index: Int in 1...10 {
    print("\(index) X \(index) = \(index*index)")
  }

  // new line
  print()
}

/// Use for-in with stride funcion
func showExample04() {
  print("EXAMPLE 04. Using for-in with stride funcion")

  let minutes = 60
  let minutesInterval = 5
  for tickMark in stride(from: 0, through: minutes, by: minutesInterval) {
    print(tickMark)
    sleep(1)
  }

  // new line
  print()
}

// Run application
main()
