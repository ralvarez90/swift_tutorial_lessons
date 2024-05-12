/// SUBSCRIPT USAGE
///
/// El significado exacto de 'subíndice' depende del contexto en el que se utiliza.
/// Los subíndices se utilizan normalmente como acceso directo para acceder a los
/// elementos miembros de una colección, lista o secuencia. Usted es libre de
/// implementar subíndices de la manera más apropiada para la funcionalidad de
/// su clase o estructura particular.
///
/// Por ejemplo, el tipo Diccionario de Swift implementa un subíndice para establecer
/// y recuperar los valores almacenados en una instancia de Diccionario. Puede establecer
/// un valor en un diccionario proporcionando una clave del tipo de clave del diccionario
/// entre corchetes de subíndice y asignando un valor del tipo de valor del diccionario
/// al subíndice.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  showExample01()
  showExample02()
}

/// Subscripting example 01
func showExample01() {

  // create dict
  var numberOfLegs: [String: Int] = [
    "spider": 8,
    "ant": 6,
    "cat": 4,
  ]

  numberOfLegs["bird"] = 2
  print(numberOfLegs)
}

/// Subscripting example 02
func showExample02() {

  // create struct
  struct Matrix {

    // instance properties
    let rows: Int, columns: Int
    var grid: [Double]

    // constructor
    init(rows: Int, columns: Int) {
      assert(rows >= 0 && columns >= 0, "Rows and columns cannot be a negative size")
      self.rows = rows
      self.columns = columns
      self.grid = Array(repeating: 0.0, count: rows * columns)
    }

    // instance methods
    func indexIsValid(row: Int, column: Int) -> Bool {
      return row >= 0 && row < rows && column >= 0 && column < columns
    }

    // subscripting
    subscript(row: Int, column: Int) -> Double {
      get {
        assert(indexIsValid(row: row, column: column), "Index out of range")
        return grid[(row * columns) + column]
      }

      set {
        assert(indexIsValid(row: row, column: column), "Index out of range")
        grid[(row * columns) + column] = newValue
      }
    }
  }

  // create instanca of matriz
  var matrix2x2 = Matrix(rows: 2, columns: 2)
  matrix2x2[0, 1] = 1.5
  matrix2x2[1, 0] = 3.2
  print("matrix2x2[0, 1] = \(matrix2x2[0, 1])")
  print("matrix2x2[1, 0] = \(matrix2x2[1, 0])")
}

// Run application
main()
