/// ASEGURAMIENTOS Y PRECONDICIONES
///
/// Permiten verificar condiciones o estados que se deben cumplir
/// en tiempo de ejecución.
///
/// 1. Assertions
/// Se emplea la función assert de forma similar al assert en
/// python, es decir, la condición a esperar y un mensaje en caso
/// de error. Ver ejemplo 01.
///
/// Puede emplear la función assertionFailure para el mismo fin, esto
/// emplendo bloques if, else if, else. Ver ejemplo 02.
///
/// 2. Precondition
/// Utilice el establecer condiciones previas siempre que una condición
/// sea potencialmente false, pero definitivamente deba ser verdadera
/// para poder continuar.
///
/// Puede emplear la función la función preconditionFailure para el
/// mismo fin. Se usa prácticamente igual que el assertion.
func main() {
  showExample01()
  showExample02()
}

// Uso de assert
func showExample01() {
  print("EXAMPLE 01. Using assert...")
  let age: Int = 34
  assert(age >= 0, "A persson's age can't be less than zero.")
  print("Your age is: \(age)")
}

// Uso de assertFailure
func showExample02() {
  let age: Int = 34
  if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
  } else if age >= 0 {
    print("You can ride the ferris wheel.")
  } else {
    assertionFailure("A person's age can't be less than zero.")
  }
}

// Run application
main()
