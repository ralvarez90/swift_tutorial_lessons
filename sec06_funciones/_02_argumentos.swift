/// ARGUMENTOS
///
/// Son parámetros que se definen en una función, que al invocarse
/// estos deben de proveerse para poder funcionar y cumplir su
/// tarea cometida.
///
/// El tipo de dato que retorna una función se establece mediante
/// la flecha como se ve en los ejemplos.
///
/// Una función puede tener múltiples argumentos.
func main() {

  // mostramos mensaje
  print(greet(name: "John"))
  print(greet(name: "Peter"))
  greetAgain(name: "Rodrigo")

  // invoque other methods
  printAndCount(string: "John Wich")
}

/// Get a greeting message
func greet(name: String) -> String {
  return "Hello Mr. \(name)!"
}

/// Greet again
func greetAgain(name: String) -> String {
  return "Hello again, " + name + "!"
}

func printAndCount(string: String) -> Int {
  print(string)
  print(string.count)
}

// Run application
main()
