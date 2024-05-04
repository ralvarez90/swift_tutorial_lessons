/// ALIAS
///
/// Se emplea la palabra reservada typealias para declarar
/// sobrenombres de tipos de datos ya consolidados. Es decir,
/// otorgan un nombre alternativo a tipos de datos.
///
/// Se declararn de la forma:
/// typealias NombreAlias = tipoConsolidado
func main() {

  // run lesson
  showExample01()
}

/// Alias de un entero sin signo
func showExample01() {
  typealias AudioSample = UInt16
  print("Min AudioSample value: \(AudioSample.min)")
  print("Max AudioSample value:", AudioSample.max)
}

// Run application
main()
