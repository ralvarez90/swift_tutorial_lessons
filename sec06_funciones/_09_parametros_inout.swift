/// PARÁMETROS IN-OUT
/// 
/// Por default los parámetros pasan como constantes al momento
/// de invocar una función. Si desea modificar el estado de un
/// argumento dentro del cuerpo de su función se lanza una 
/// excepción.
/// 
/// Pude hacer que una variabe se pase por referencia, es decir
/// se pueda modificar el valor de un parámetro durante la
/// ejecución de una función si se indoca que un parámetro
/// es de 'entra-salida'.
/// 
/// Al invocarse dichas funciones que reciben parámetros inout
/// se deben pasar empleando el &.
func main() {

    print("EXAMPLE 01. Using function with inout parameters")
    var x = 1
    var y = 2
    swapIntegers(&x, &y)
    print("X: \(x), Y: \(y)")
}

func swapIntegers(_ a: inout Int, _ b: inout Int) -> Void {
    let aValue: Int = a
    a = b
    b = aValue
}


// Run application
main()