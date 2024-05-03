/// CONSTANTES Y VARIABLES
///
/// Empleamos var y let para decarar variables y
/// constantes respectivamente.
///
/// Las constantes en Swift definidas con la palabra
/// let se generan en tiempo de ejecución.
///
/// Swift cuenta con un sistema de tipos estático,
/// e inferencia de tipos si no se especifica el
/// tipo de dato de forma literal.
///
/// Podemos declarar variables/constantes y posteriormente
/// otorgarles un estado inicial o definirse en una sola
/// sentencia.
func main() {
  
  // constante string
  let welcomMessage: String = "Welcome to the Swift Language Programming!"
  print(welcomMessage)

  // variable entera con inferencia de tipos
  var someInteger = 123
  someInteger += 1
  print("someInteger value is:", someInteger, "with type:", type(of: someInteger))
}

// Run application
main()
