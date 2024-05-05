/// OPERADORES UNARIOS, BINARIOS Y TERNARIOS
///
/// 1. Asignación
/// Se emplea el = para efectuar asignaciones de valores o
/// referencias.
///
/// 2. Aritméticos
/// Son los clásicos de toda la vida: +, -, *, / y el operador
/// de residuo o módulo %.
///
/// 3. Asignación compuesta
/// Combina el operador de asignación con otros, por ejemplo con
/// los aritméticos, tenemos:
/// +=
/// -=
/// *=
/// /=
/// %=
/// ...
///
/// 4. Comparación
/// Permite comparar valores devolviendo un valor booleano al
/// evaluarse. Tenemos los clásicos <, <=, >, >=, == y !=.
///
/// 5. Ternario
/// Permite simplificar un bloque if-else en una sola
/// sentencia.
///
/// 6. Nil Coalesing
/// Se emplea ?? para asignar un valor default en caso de que
/// un Optional sea nil.
///
/// 7. Lógicos
/// Son los clásicos &&, || y ! donde los operandos son booleanos
/// o expresiones que al evaluarse sean booleanos.
///
func main() {

}

/// Uso de algunos operadores
func showExample01() {

  // módulo
  print("-9 % 4  = \(-9%4)")

  // unario negación
  print("+(-(-10)) = \(+(-(-10)))")

  // ternario
  let rowHeight: String = 100 > 90 ? "Gordo" : "Flaco"
  print("rowHeight: \(rowHeight)")

  // nil-coalesing
  let defaultColor = "RED"
  var userDefinedColor: String?

  // simplificación de
  // colorNameToUse = userDefinedColor == nil ? defaultColor : userDefinedColor
  let colorNameToUse = userDefinedColor ?? defaultColor
  print("colorNameToUse: \(colorNameToUse)")
}

// Run application
main()
