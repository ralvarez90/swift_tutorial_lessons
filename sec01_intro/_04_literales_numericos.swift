/// LITERALES NUMÉRICOS
///
/// Los valores literales son valores establecidos de forma
/// directa dentro del código. Estos se pueden establecer en
/// diferentes bases: binario, octal, decimal y hexadecimal.
///
/// Binario con prefijo 0b
/// Octal con prefijo   0o
/// Hexadecimal con prefijo 0x
///
/// Los flotantes los podemos colocar con notación exponencial,
/// además de poder separar literales grandes con _ sin que
/// se afecte el funcionamiento.
func main() {

  // ejemplo 1, enteros con diversas bases
  let myBinaryNumber     : Int = 0b10001
  let myOctalNumber      : Int = 0o21
  let myHexadecimalNumber: Int = 0x11
  let myDecimalNumber    : Int = 17
  print("Binario    : \(myBinaryNumber)")
  print("Octal      : \(myOctalNumber)")
  print("Decimal    : \(myDecimalNumber)")
  print("Hexadecimal: \(myHexadecimalNumber)")

  // ejemplo 2, flotantes
  let someDoubleNumber: Double = 1_000_000.00
  let otherBigNumber  : Double = 1.45E32
  print("someDoubleNumber: \(someDoubleNumber)")
  print("otherBigNumber  : \(otherBigNumber)")
}

// Run application
main()
