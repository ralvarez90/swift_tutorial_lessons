/// COLECCIONES
///
/// Swift provee de diversos tipos de colecciones de datos
/// primarias conocidas como arrays, sets y diccionarios.
///
/// Los arreglos, sets y diccionarios son implementados como
/// colecciones genéricas.
///
/// 1. Arrays
/// Los arreglo son colecciones de un mismo tipo de datos. Se
/// define su tipo mediante [T] donde T es el tipo de dato
/// que almacenará dicho array.
///
/// Se emplea el método append para agregar elementos a los
/// arrays al final del arreglo en cuestión.
///
/// Disponemos de constructores que permiten crear arreglos
/// de tamañao establecido y valores default para cada uno
/// de sus elementos.
///
/// Los arreglos son colecciones indexables, es decir que
/// podemos acceder a cada uno de los elementos por medio
/// del índice.
///
/// Podemo emplear los operadores + y += con la finalidad
/// de agreta elementos a los arreglos.
///
/// Podemos obtener sub arreglos mediante la técnia de
/// slicing empleando rangos de la forma
/// nombreArray[a...b]
///
/// Iteración
/// Empleamos el bucle for-in para iterar a través de
/// los elementos de un array. Además los arrays cuentan
/// con la propiedad enumerated que retorna un iterador
/// que va devolviendo tuplas de la forma (i, v) donde
/// i es el índice de cada elemento v dentro del arreglo.
/// Ver ejemplo 05.
func main() {
  showExample01()
  showExample02()
  showExample03()
  showExample04()
  showExample05()
}

/// Creación de arreglos.
func showExample01() {
  print("EXAMPLE 01. Create array")

  // create an empty array
  var someInts: [Int] = []
  print("someInts: \(someInts) with size \(someInts.count)")

  // ad some items
  for _ in 1...5 {
    someInts.append(Int.random(in: 1...6))
  }

  print("final someInts array: \(someInts)")
  print()
}

/// Creación de arreglos empleando constructores
func showExample02() {
  print("EXAMPLE 02. Use Array constructors")

  let threeDoubles: [Int] = Array(repeating: 0, count: 10)
  print("threeDoubles: \(threeDoubles)")
  print()
}

/// Creación de arreglos de flotantes
func showExample03() {
  print("EXAMPLE 03. Use + with arrays")

  let someDoubles: [Double] = [1.0, 2.0]
  print(someDoubles + [Double](repeating: 0.0, count: 4))
  print()
}

/// Uso de propiedad count, e isEmpty
func showExample04() {
  print("EXAMPLE 04. Use isEmpty and count property")

  // array de strings
  let shoppingList: [String] = [
    "Eggs", "Milk", "Bread", "Fish",
  ]

  if !shoppingList.isEmpty {
    print("Products in Shopping list:")
    for product in shoppingList {
      print("- \(product)")
    }
  } else {
    print("The shopping list is empty")
  }

  print()
}

/// Uso de for-in y for-in con enumerated
func showExample05() {
  print("EXAMPLE 05. Use for-in bucle")

  let shoppingList = [
    "Eggs", "Milk", "Bread", "Meet",
  ]

  // use for in
  for p in shoppingList {
    print("- \(p)")
  }

  // use for-in with enumerador
  for (i, v) in shoppingList.enumerated() {
    print("(\(i), \(v))")
  }

  print()
}

/// Run application
main()
