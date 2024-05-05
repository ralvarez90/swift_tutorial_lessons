/// CARACTERES
///
/// Son elementos indivuales de los cuales se componen los Strings y
/// substrings. Cada elemento sobre el cual se itera un string es
/// un objeto Character.
///
/// Como cualquier otro tipo de dato, podemos declarar variables
/// de tipo Character. Ver ejemplo 02.
func main() {
  showExample01()
  showExample02()
  showExample03()
}

/// Iteración de strings
func showExample01() {
  print("EXAMPLE 01. Iterate over String and get each Character element")

  // mensaje inicial
  let message: String = "I 💖 Swift!"

  // iteramos obteneindo cada character
  for c: Character in message {
    print(c, "\twith type", type(of: c))
  }
  print()
}

/// Declaración de Character
func showExample02() {
  print("EXAMPLE 02. Declaration of Character item")

  // caracter individual
  let exclamationMark: Character = "!"
  print(exclamationMark)

  // arreglo de caracteres
  let catCharacters: [Character] = ["C", "a", "t", exclamationMark, "🐱"]
  print(catCharacters)

  let catMessage = String(catCharacters)
  print(catMessage)
  print()
}

/// Método append
func showExample03() {
  print("EXAMPLE 03. Using append method")

  var message = "Hello World"
  message.append("!")
  print("message: \(message)")
  print()
}

/// Run application
main()
