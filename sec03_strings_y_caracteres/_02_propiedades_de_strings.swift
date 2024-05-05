/// PROPIEDADES
///
/// Los Strings al ser objetos en swift tienen ya creados
/// propiedades y métodos accesibles empleamndo dot-notation.
func main() {
  showExample01()
}

/// Uso de propieades
func showExample01() {
  print("EXAMPLE 01. Use some String properties")

  let message: String = "Hello World in Swift!"
  print("message: \(message)")
  print("message.codingKey   : \(message.codingKey)")
  print("message.count       : \(message.count)")
  print("message.customMirror: \(message.customMirror)")
  print("message.description :", message.description)
  print("message.endIndex    :", message.endIndex)
  print("message.first       :", message.first!)
  print("message.hashValue   :", message.hashValue)
  print("message.indices     :", message.indices)
  print()
}

/// Run application
main()
