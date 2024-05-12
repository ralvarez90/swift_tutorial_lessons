/// TYPE METHODS
///
/// Son conocidos en lenguajes como java como métodos estáticos,
/// en swift les dicen de tipo ya que se invocan directamente
/// a partir de la clase, estructura o enumeración.
///
/// Los métodos de instancia son métodos que usted llama en una
/// instancia de un tipo particular. También puede definir métodos
/// que se invocan en el propio tipo. Este tipo de métodos se
/// denominan métodos de tipo.
///
/// Para indicar métodos de tipo, escriba la palabra clave static
/// antes de la palabra clave func del método. Las clases pueden usar
/// la palabra clave class en su lugar, para permitir que las subclases
/// anulen la implementación de ese método por parte de la superclase.
///
/// Notas:
/// - El atributo @discardableResult en Swift se utiliza para indicar
/// al compilador que el resultado de una función puede ser descartado
/// sin generar una advertencia sobre el resultado no utilizado.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // create struct
  struct LevelTracker {

    // type properties
    static var highestUnlockedLevel = 1

    // instance properties
    var currentLevel = 1

    // type method
    static func unlock(_ level: Int) {
      if level > highestUnlockedLevel {
        highestUnlockedLevel = level
      }
    }

    // type method
    static func isUnlocked(_ level: Int) -> Bool {
      return level <= highestUnlockedLevel
    }

    // instance method
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
      if LevelTracker.isUnlocked(level) {
        currentLevel = level
        return true
      }

      return false
    }
  }

  // class player
  class Player {

    // instance properties
    let playerName: String
    var tracker = LevelTracker()

    // instance method
    func complete(level: Int) {
      LevelTracker.unlock(level + 1)
      tracker.advance(to: level + 1)
    }

    // constructor
    init(name: String) {
      playerName = name
    }
  }

  // instance player, example 01
  var player = Player(name: "RAlvarez90")
  player.complete(level: 1)
  print("playerName: \(player.playerName)")
  print("Highest unlocked level is now: \(LevelTracker.highestUnlockedLevel)")

  // instance player, example 02
  player = Player(name: "Beto")
  if player.tracker.advance(to: 6) {
    print("Player is now on level 6")
  } else {
    print("Level 6 hasn't yet been unlocked")
  }
}

// Run application
main()
