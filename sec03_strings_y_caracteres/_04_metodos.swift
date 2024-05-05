/// INDICES
///
/// Cada String tiene un objeto asociado del tipo String.Index, que corresponde
/// a la posición de cada uno de los caracteres dentro del String.
///
/// Recordemos que diferentes caracteres pueden requerir diferentes cantidades de
/// memoria para almacenarse, por lo que para determinar qué carácter está en una
/// posición particular, debe iterar sobre cada escalar Unicode desde el inicio o
/// el final de esa cadena.
///
/// Por este motivo, las cadenas Swift no se pueden indexar mediante valores
/// enteros.
///
/// Utilice la propiedad startIndex para acceder a la posición del primer carácter
/// de una cadena. La propiedad endIndex es la posición después del último carácter
/// de una cadena. Como resultado, la propiedad endIndex no es un argumento válido
/// para el subíndice de una cadena. Si una cadena está vacía, startIndex y endIndex
/// son iguales.
///
/// Método index
/// Puede obtener caracteres individuales dentro de un string. Este método devuelve
/// un String.Index que representa la posición de un caracter dentro de un String.
///
/// Propiedad indices
/// Permite acceder a un iterable que contiene todos los índices de cada caracter
/// infividual, permitiendo usarlo junto con bucle for-in.
///
/// Método insert
/// Permite insertar caracters dentro de un String.
func main() {
  showExample01()
  showExample02()
  showExample03()
  showExample04()
}

/// Uso de startIndex y endIndex
func showExample01() {
  print("EXAMPLE 01. Use startIndex and endIndex property")

  let greeting = "Guten Tag!"
  print("greeting[greeting.startIndex] : \(greeting[greeting.startIndex])")
  print()
}

/// Uso de indices
func showExample02() {
  print("EXAMPLE 02. Use indices property and use with for-in.")

  let greeting: String = "Hello World in Swift!"
  for i in greeting.indices {
    print("greeting[\(i)] -> \(greeting[i])")
  }
  print()
}

/// Uso de insert
func showExample03() {
  print("EXAMPLE 03. Use insert method")

  var welcome: String = "Hello"
  welcome.insert(
    contentsOf: " World in Swift!", at: welcome.index(before: welcome.endIndex))
  print(welcome)
  print()
}

/// Remove method
func showExample04() {
  print("EXAMPLE 04. Use remove method")

  var welcome: String = "Hello"
  welcome.remove(at: welcome.index(before: welcome.endIndex))
  print(welcome)
}

/// Run application
main()
