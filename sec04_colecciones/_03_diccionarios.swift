/// DICCIONARIOS
///
/// Son colecciones de pares clave-valor. El tipo de dato
/// de un diccionario se establece de la forma [T:V] donde
/// T es el tipo de dato de las llaves y V el tipo de dato
/// de los valores asociados a dicha clave.
///
/// Los diccionarios tienen al igual que en puython propiedaes
/// llamadas keys y values que devuelve iterables de keys y
/// values de determinado diccionario.
///
func main() {
  showExample01()
}

/// Create an emptu dict
func showExample01() {
  print("EXAMPLE 01. Create and empty dict [:], add items an iterate with for-in")

  // creamos un diccionario vació
  var namesOfIntegers: [Int: String] = [:]
  namesOfIntegers[1] = "one"
  namesOfIntegers[2] = "two"
  namesOfIntegers[3] = "three"
  print(namesOfIntegers, "with type:", type(of: namesOfIntegers))
  print()

  // iteramos
  for (k, v) in namesOfIntegers {
    print("- (\(k), \(v))")
  }

  print()
}

/// Run application
main()
