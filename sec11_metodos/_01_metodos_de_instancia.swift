/// MÉTODOS DE INSTANCIA
///
/// Los métodos son funciones asociados a un tipo en particular. Las
/// clases, estructuras y enumeraciones pueden definir métodos de
/// instancia con el fin de encapsular tareas y funcionalidaes.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  /// Counter class
  class Counter {
    var count: Int = 0

    func increment() {
      count += 1
    }

    func increment(by amount: Int) {
      count += amount
    }

    func reset() {
      count = 0
    }
  }

  // create instances
  let counter = Counter()

  // call method
  counter.increment()
  print("counter.count = \(counter.count)")

  counter.increment(by: 5)
  print("counter.count = \(counter.count)")

  counter.reset()
  print("counter.count = \(counter.count)")
}

// Run application
main()
