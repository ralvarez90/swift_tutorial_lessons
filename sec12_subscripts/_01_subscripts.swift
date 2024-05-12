/// SUBSCRIPTS (SUB-ÍNDICES)
///
/// Las clases, estructuras y enumeraciones pueden definir subíndices,
/// que son atajos para acceder a los elementos miembros de una colección,
/// lista o secuencia.
///
/// Utilice subíndices (subscripts) para establecer y recuperar valores por
/// índice sin necesidad de métodos separados para configurar y recuperar.
///
/// Por ejemplo, accede a elementos en una instancia de Array como
/// algúnArray[índice] y a elementos en una instancia de Diccionario
/// como algúnDiccionario[clave].
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // struct with subscripts
  struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
      return multiplier * index
    }
  }

  // create instance
  let threeTimesTable = TimesTable(multiplier: 3)
  for i: Int in 1...10 {
    print("3 x \(i) -> \(threeTimesTable[i])")
  }

  // show sintax
  let basicSintax = """
    BASIC SINTAX
    subscript(index: Int) -> Int {
      // return an appropiate subscript value here.
    }

    GENERAL SINTAX
    subscript(index: Int) -> Int {
          get {
              // Return an appropriate subscript value here.
          }
          
          set(newValue) {
              // Perform a suitable setting action here.
          }
      }
    """
  print(basicSintax)
}

// Run application
main()
