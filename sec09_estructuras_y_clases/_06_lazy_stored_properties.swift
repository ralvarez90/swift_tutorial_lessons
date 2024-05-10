/// LAZY STORED
///
/// Una propiedad almacenada de forma diferida es una propiedad cuyo
/// valor inicial no se calcula hasta la primera vez que se utiliza.
///
/// Para indicar una propiedad almacenada de forma diferida,
/// escriba el modificador diferido antes de su declaración.
///
/// Básicmaente son propiedades que se generan en memoria hasta
/// utilizarse en tiempo de ejecución-
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
    lazy var importer = DataImporter()
    var data: [String] = []
  }

  // create instanca
  let manager = DataManager()
  manager.data.append("Some data")
  manager.data.append("Some more data")
  print("manager.importer.filename: \(manager.importer.filename)")
}

// Run application
main()
