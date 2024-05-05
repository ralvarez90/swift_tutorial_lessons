/// STRINGS
///
/// Son secuencias de caracteres iterables codigicados bajo el standard
/// Unicode. En swift los String y los Character proveen un mecanismo
/// codificado en Unicode para manejar texto en nuestras aplicaciones.
///
/// Se emplean las dobles comillas para almacenar literales de
/// cadena, y triple comillas dobles para establecer string
/// multilínea.
///
/// Los strings en swift soportan caracteres unicode y emogis, por
/// lo que se emplea \u{n} donde n es un entero en hexadecimal.
func main() {
  showExample01()
  showExample02()
  showExample03()
}

/// Literales de cadena
func showExample01() {
  print("EXAMPLE 01. String literals")

  // string literal
  let message = "Hello World in Swift Language!"
  print(message)
  print()
}

/// String multilínea
func showExample02() {
  print("EXAMPLE 02. Create a multiline string")

  // mensaje largo
  let bigMessage: String = """
    # this is a script in python3

    def main():
      print('Hello World in Python')

    if __name__ == '__main__':
      # run application
      main()
      input('\nPress any key to continue . . . ')
    """
  print(bigMessage)
  print()
}

/// Unicode and emogi characteres in strings
func showExample03() {
  print("EXAMPLE 03. Create a string with unicode codepoints")

  let message: String = "I \u{1F496} Swift!"
  print(message)
  print()
}

// Run application
main()
