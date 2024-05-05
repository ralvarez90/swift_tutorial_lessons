/// TUPLAS
///
/// Son grupos de datos del mismo tipo o diferente. Es
/// posible acceder a cada uno de los miembros empleando
/// el dot-notation o si son tuplas con nombre por medio
/// de dicho nombre.
///
/// Si solo queremos el dato de un miembro de una tupla podemos
/// destructurar dicho dato, usando _ y usando el operador de
/// asignación.
///
/// Las tuplas es el mecanismo por el cual se pueden regresar
/// "múltiples" al ejecutar funciones o métodos.
func main() {
  showExample01()
  showExample02()
}

/// Uso de tuplas
func showExample01() {

  // tupla normal
  let http404Error: (Int, String) = (404, "Not Found")
  print("http404Error: \(http404Error), with type: \(type(of: http404Error))")

  // uso de destructuración
  let (statusCode, _) = http404Error
  print("statusCode is \(statusCode)")

  // acceso a miembros
  print("http404Error.0 -> \(http404Error.0)")
  print("http404Error.1 -> \(http404Error.1)")
}

/// uso de tuplas con nombre
func showExample02() {

  // named tuple
  let http200Status = (statusCode: 200, description: "OK")
  print("http200Status: \(http200Status) with type \(type(of: http200Status))")
}

// Run application
main()
