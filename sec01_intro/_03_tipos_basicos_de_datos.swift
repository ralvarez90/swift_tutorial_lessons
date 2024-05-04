/// TIPOS DE DATOS BÁSICOS
///
/// Swift viene equipado con tipos de datos disponibles
/// como enteros, flotantes, booleanos, etc.
///
/// Existen diversos tipos de datos numéricos como Int,
/// UInt, entre otros.
///
/// Los flotantes no son mas que Float y Double. Donde los
/// Float se almacenan en 32 bits y los Double en 64.
///
/// Notas:
/// - Existen miembros estáticos dentro de estructuras
/// o clases que podemos emplear usando dot-notation.
func main() {

  // entero sin signo de 8 bits
  let maxUInt8 : UInt8  = UInt8.max
  let maxUInt64: UInt64 = UInt64.max

  // mostramos enteros sin signo
  print("maxUInt8  -> \(maxUInt8)")
  print("maxUInt64 -> \(maxUInt64)")

  // mostramos flotante
  let PI_VALUE: Double = Double.pi
  print("Pi value is: \(PI_VALUE)")
}

// Run application
main()
