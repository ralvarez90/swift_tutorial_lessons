/// FUNCIONES
///
/// Son bloques de código reutilizables que pueden recibir y/o retornar
/// valores cada que se invocan.
func main() {

  // invoca funcione
  sayHi()

  // invoca function
  let myName = "Rodrigo A."
  print(greeting(person: myName))
}

/// Show welcome message
func sayHi() { print("Hi!") }

/// Return a string with message
func greeting(person: String) -> String {
  let greetingMsg: String = "Welcome Mr. \(person)!"
  return greetingMsg
}

// Run application
main()
