/// SENTENCIA IF
///
/// Permiten evaluar bloques de código en base a condiciones. Podemos
/// emplear a su vez else if, else. Ver ejemplo 01.
///
/// Un bloque if se puede evaluar como expresión, por lo tanto
/// puede regresar un valor concreto y asignarse a un nombre
/// de variable. Ver ejemplo 02.
///
/// Si se usa un bloque if que al final se evalúa como expresión,
/// el valor devuelto si se asigna a una variable debe ser del mismo
/// tipo en cada una de las ramas. Ver ejemplo 03.
///
/// Podemos emplear la sentencia throw para lanzar una excepción en caso
/// de que se requiera detener la ejecución en determinado momento.
/// Ver ejemplo 04.
func main() {
  showExample01()
  showExample02()
  showExample03()
}

/// Use a normal if-else statements.
func showExample01() {
  print("EXAMPLE 01. Create an if_else-if")

  let temperatureFahrenheit = Int.random(in: 15...45)
  if temperatureFahrenheit <= 32 {
    print("It's very cold. Considera waring o scard.")
  } else {
    print("It's very hot!")
  }

  // newline
  print()
}

/// Use if-else block as expression
func showExample02() {
  print("EXAMPLE 02. Use if-else block with assigment statement")

  // constantes
  let temperatureCelsius = Int.random(in: -10...35)
  let weatherAdvice: String

  // if statements with assigment
  weatherAdvice =
    if temperatureCelsius <= 0 {
      "It's very cold. Consider wearing a scarf."
    } else if temperatureCelsius >= 30 {
      "It's realy warm. Don't forget to wear sunscreen."
    } else {
      "It's not that cold. Wear a T-Shirt."
    }

  // show final message
  print("temperature: \(temperatureCelsius)")
  print(weatherAdvice)

  // endline
  print()
}

/// Same type returned.
func showExample03() {
  print("EXAMPLE 03. All branchs of if contain valueas as a same type")

  let temperature = Int.random(in: -30...30)
  let freezeWarning =
    if temperature <= 0 {
      "It's below freezing. Watch for ice!"
    } else {
      nil as String?
    }

  // final results
  print("Temperature: \(temperature)")
  if let msg = freezeWarning {
    print(msg)
  }

  // newline
  print()
}

/// Run application
main()
