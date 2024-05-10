/// ENUMS WITH ASSOCIATE VALUE
///
/// Puede definir enumeraciones Swift para almacenar valores asociados
/// de cualquier tipo determinado, y los tipos de valores pueden ser
/// diferentes para cada caso de la enumeración si es necesario.
///
/// Por ejemplo, supongamos que un sistema de seguimiento de
/// inventario necesita realizar un seguimiento de los productos
/// mediante dos tipos diferentes de códigos de barras.
///
/// Algunos productos están etiquetados con códigos de barras
/// 1D en formato UPC, que utiliza los números del 0 al 9.
/// Cada código de barras tiene un dígito del sistema numérico,
/// seguido de cinco dígitos del código del fabricante y cinco dígitos
/// del código del producto. A estos les sigue un dígito de control
/// para verificar que el código se ha escaneado correctamente:
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ")
    let _ = readLine()
  }

  // enumeracion con valores asociados
  enum BarCode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
  }

  // create item of enumeration
  var productBarCode: BarCode = BarCode.upc(8, 85909, 51226, 3)
  productBarCode = .qrCode("ABCDEFGHIJKLM")
  switch productBarCode {
  case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
  case .qrCode(let productCode):
    print("QR Code: \(productCode)")
  }
}

// Run application
main()
