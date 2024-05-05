/// CONVERSIONES DE NÚMEROS
///
/// Podemos convertir valores numéricos a valores de otro tipo
/// numérico empleando los nombres de las clases correspondientes.
/// 
/// De forma general, la conversión de tipos numéricos es de la
/// forma SomeType(ofInitialValue)
func main() {

  // entero sin singo
  let someInt : UInt8 = 1
  var otherInt: UInt64 = UInt64(someInt)
  print("otherInt: \(otherInt) with type:", type(of: otherInt))

  otherInt = 123
  print("someInt + otherInt = \(someInt + UInt8(otherInt))")
}

// Run application
main()
