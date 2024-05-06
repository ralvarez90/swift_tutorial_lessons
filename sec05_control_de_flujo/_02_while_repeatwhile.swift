/// CICLO WHILE y REPEAT WHILE
///
/// Es prácticamente el mismo while clásico de otros lenguages
/// de programación. El bloque asociado se ejceutará siempre y
/// cuando la condición que se evalúe sea verdadero.
///
/// En swift no existe el do-while como otros lenguajes, existe
/// el repeat-while que es prácticamente lo mismo que el do-while.
func main() {
  showExample01()
  showExample02()
}

/// Uso normal de while
func showExample01() {
  print("EXAMPLE 01. Using while condition")

  while true {
    let randInt = Int.random(in: 1...2)
    if randInt % 2 == 0 {
      break
    }
    print("randint: \(randInt)")
  }

  // newline
  print()
}

/// Uso de repeat-while
func showExample02() {
  print("EXAMPLE 02. Use repeat-while")

  // creante int array
  var finalSquare = 25
  var borad: [Int] = [Int](repeating: 0, count: finalSquare)
}

// Run application
main()
