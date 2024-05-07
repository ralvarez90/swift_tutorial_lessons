/// ENUMERACIONES
///
/// Una enumeración define un tipo común de dato para un grupo
/// de valores relacionados y bien acotados.
///
/// Permiten trabajar con grupos de valores de forma segura.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // show general syntax
  let generalSyntax = """
    // enumeration syntax
    enum SomeEnumeration {
        // enumeration definition goes here...
    }
    """

  // shoe message
  print(generalSyntax)
}

// Run application
main()
