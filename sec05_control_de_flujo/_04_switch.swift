/// SWIFT
///
/// Es básicamente el mismo switch de otros lenguajes
/// de programación pero con esteroides. El ejemplo 01
/// muestra su estructura básica general y el ejemplo
/// 02 un uso tradicional.
///
/// Podemos evaluar múltiples valores en un mismo caso
/// o igual usarlo como expresión. Ver ejemplo 03.
///
/// De forma implícita no es necesario colocar la sentencia
/// break en cada caso como en lenguajes como java.
///
/// Como en kotlin, en swift podemos emplear intervalos
/// de valores mediante rangos para matchear dentro de
/// un case en el swift. Ver ejemplo 04.
///
/// Podemos evalur tuplas como valores en los casos dentro
/// de un match. Ver ejemplo 05.
///
/// Al usar tuplas como items en los case dentro de un
/// switch podemos efectuar el value binding, es decir
/// enlazar a una variable elementos dentro de la tupla.
/// Ver nuevamente ejmplo 05.
///
/// Condiciones adicionales
/// En un case dentro de un swift se pueden agregar
/// condiciones empleando la palabra reservada where.
/// Ver ejemplo 06.
func main() {
  showExample01()
  showExample02()
  showExample03()
  showExample04()
  showExample05()
  showExample06()
}

/// General structure
func showExample01() {
  print("EXAMPLE 01. Show general structure of switch block")

  let msgLesson =
    """
    switch <#value#> {
    case <#value1#>:
        <#statements#>
    case <#value2#>:
        <#statements#>
    ...
    default:
        <#statement#>
    }
    """
  print(msgLesson)

  // newline
  print()
}

/// Normal use
func showExample02() {
  print("EXAMPLE 02. Normal use of switch")

  let someChar: Character = "Z"
  switch someChar {
  case "Z":
    print("Last character")
  case "A":
    print("First character")
  default:
    print("Some other character: \(someChar.uppercased())")
  }

  // newline
  print()
}

/// Use as expression
func showExample03() {
  print("EXAMPLE 03. Use switch block as expression")

  let anotherChar = "AZL".randomElement()! as Character
  let message =
    switch anotherChar {
    case "A":
      "The first letter..."
    case "Z":
      "The last letter"
    default:
      "Other letter..."
    }

  // final results
  print(message)

  // newline
  print()
}

/// Interval matching
func showExample04() {
  print("EXAMPLE 04. Use interval matching in switch statement")

  // value to match
  let approximateCount: Int = 62
  let countedThings: String = "moons orbiting saturn"
  let naturalCount: String

  switch approximateCount {
  case 0:
    naturalCount = "no"
  case 1..<5:
    naturalCount = "a few"
  case 5..<12:
    naturalCount = "several"
  case 12..<100:
    naturalCount = "dozens of"
  case 100..<1000:
    naturalCount = "hundred of"
  default:
    naturalCount = "many"
  }

  // final message
  print("There are \(naturalCount) \(countedThings)")
  print()
}

/// Tuples
func showExample05() {
  print("EXAMPLE 05. Using tuples inside switch cases")

  // variables
  var somePoint: (Int, Int) = (1, 1)
  var messageInfoPoint: String

  switch somePoint {
  case (0, 0):
    messageInfoPoint = "\(somePoint) is at the origin"
  case (_, 0):
    messageInfoPoint = "\(somePoint) is on the x-axis"
  case (0, _):
    messageInfoPoint = "\(somePoint) is on the y-axis"
  case (-2...2, -2...2):
    messageInfoPoint = "\(somePoint) is inside the box"
  default:
    messageInfoPoint = "\(somePoint) is outside the box"
  }

  // show results
  print(messageInfoPoint)
  print()

  // value binding
  somePoint = (2, 0)
  switch somePoint {
  case (let x, 0):
    messageInfoPoint = "on the x-axis with an x value of \(x)"
  case (0, let y):
    messageInfoPoint = "on the y-axis with  an y value of \(y)"

  case let (x, y):
    messageInfoPoint = "somewhere else at (\(x), \(y))"
  }

  // show final results
  print(messageInfoPoint)
  print()
}

/// Where
func showExample06() {
  print("EXAMPLE 06. Using where statement inside of cases")

  // define tuple
  let point = (1, -1)

  // switch with where statement
  switch point {
  case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
  case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
  case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
  }

  // newline
  print()
}

// Run application
main()
