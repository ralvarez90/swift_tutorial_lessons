/// TYPE SUSCRIPTS
///
/// Recordemos que existen métodos de instancia y de tipo. Podemos implementar
/// subscripts de tipo, es decir que se usen directamente a partir del nombre
/// de la clase, estructura o enumeración correspondiente. Se emplea de igual
/// forma la palabre reservada static.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // enumeration
  enum Planet: Int {
    case mercury = 1
    case venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
      return Planet(rawValue: n)!
    }
  }

  // create instance
  let mars = Planet[4]
  print(mars)
}

// Run application
main()
