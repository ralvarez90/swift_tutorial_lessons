/// FUNCIONES ANIDADAS
///
/// Las funciones anidadas, al ser ciudadanos de
/// primera clase pueden ser tratadas como cualquier
/// variable, esto permite definir funciones dentro
/// de otras funciones.
func main() {

  // exec to end program
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // nested function
  func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
  }

  var currentValue = 4
  let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
  while currentValue != 0 {
    print("\(currentValue). . . ")
    currentValue = moveNearerToZero(currentValue)
  }
  print("Zero!")
}

// Run application
main()
