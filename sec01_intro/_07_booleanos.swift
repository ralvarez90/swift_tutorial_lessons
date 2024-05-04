/// BOOLEANOS
///
/// Son singletons del tipo Bool, permiten representar
/// estados on/off mediante los valores true y false.
func main() {

}

/// Uso de booeanos en expresiones condicionales.
func showExample01() {

  // boolean variables
  let orangesAreOranges  : Bool = true
  let turnipsAreDelicious: Bool = false

  if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
  } else {
    print("Eww, turnips are horrible.")
  }

  // expresion booleana
  print("true && false -> \(orangesAreOranges && turnipsAreDelicious)")
}

/// Run application
main()
