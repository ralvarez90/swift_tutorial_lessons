/// SETS
///
/// Son colecciones no ordenados de un mismo tipo, con la
/// característica de que contiene elementos únicos, es decir,
/// no se repiten.
///
/// Los tipos de datos que almacenerán los conjuntos deben ser
/// hashables, es decir, por medio de un código hash único por
/// elemento sabrá swift si un elemento ya se encuentra dentro
/// o no dentro de un conjunto.
///
/// Para crear conjuntos se emplea la clase Set. Al igual que
/// en python contamos con métodos de unión, intersección,
/// diferencia, etc para poder realizar operaciones entre
/// conjuntos.
func main() {
  showExample01()
}

/// Creación de conjuntos
func showExample01() {
  print("EXAMPLE 01. Create a set collection")

  // emtpy set
  let letters = Set<Character>()
  print("Empty set: \(letters) with size: \(letters.count)")

  // set with init valies
  let favoriteGenders: Set<String> = [
    "Rock", "Metal", "Metal", "Pop",
  ]

  // ordenamos
  for gender in favoriteGenders.sorted() {
    print(gender, terminator: ", ")
  }
  print()

  print("favoriteGenders: \(favoriteGenders) with type: \(type(of: favoriteGenders))")
  print()
}

/// Run application
main()
