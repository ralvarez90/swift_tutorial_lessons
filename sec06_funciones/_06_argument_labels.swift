/// ARGUMENT LABELS
///
/// Cada argumento de una función se etiqueta con un
/// nombre, que se emplea al momento de invocar dicha
/// función.
///
/// Estos se pueden omitir si se emplea un _ como etiqueta
/// en vez de un nombre fijo.
func main() {

  print("EXAMPLE 01. Using argument label and no-label")
  sayHi1(name: "John Wick")
  sayHi2("John Wick")
}

func sayHi1(name: String) {
  print("Hello \(name)")
}

func sayHi2(_ name: String) {
  print("Hi Mr. \(name)")
}

// Run application
main()
