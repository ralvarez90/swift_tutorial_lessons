/// PROPERTY OBSERVERS
///
/// Obsertan y responden a cambios en propiedades dentro de
/// clases o estructura.
///
/// Estos observadores son llamados cada que un nuevo valor
/// se le es asignado dicha propiedad.
///
/// Puede agregar property observers en los siguientes lugares:
/// - stored properties que defina
/// - stored properties que herede
/// - computed properties que herede
///
/// Tiene la opción de definir uno o ambos observadores en
/// una propiedad:
/// - willSet (establecerá)
/// - didSet (estableció)
///
/// El método willSet tiene acceso a newValue mientras que
/// el didSet al oldValue.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  class StepCounter {

    // property with observ ers
    var totalSteps: Int = 0 {
      willSet(newTotalSteps) {
        print("About to set totalSteps to \(newTotalSteps)")
      }

      didSet {
        if totalSteps > oldValue {
          print("Added \(totalSteps -  oldValue) steps")
        }
      }
    }
  }

  // create instance
  let counter = StepCounter()

  // change state, execute willSet and didSet
  counter.totalSteps = 200
  print()

  counter.totalSteps = 369
  print()

  counter.totalSteps = 895
  print()
}

// Run application
main()
