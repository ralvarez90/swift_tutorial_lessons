/// LAZY STORED
///
/// Una propiedad almacenada de forma diferida es una propiedad cuyo
/// valor inicial no se calcula hasta la primera vez que se utiliza.
///
/// Para indicar una propiedad almacenada de forma diferida,
/// escriba el modificador diferido antes de su declaración.
///
/// Básicmaente son propiedades que se generan en memoria hasta
/// utilizarse en tiempo de ejecución.
///
/// Nota:
/// - Lazy se traduce como perezoso.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // create class
  class DataImporter {

    /*
        DataImporter is a class to import data from external file.
        The class is assumed to take a nontrivial amount of time
        to initialize.
        */
    var filename: String = "data.txt"
  }

  class DataManager {
    // lazy property, se instancia en memoria hasta que
    // se emplea.
    lazy var importer = DataImporter()
    var data: [String] = []
  }

  // create instance
  let manager = DataManager()
  manager.data.append("Some data")

  // add more data
  for n: Int in 1...10 {
    manager.data.append("Other some data \(n)")
  }

  // show manager instance
  print("manager.importer.filename: \(manager.importer.filename)")
  print("manager.data             : \(manager.data)")
}

// Run application
main()
