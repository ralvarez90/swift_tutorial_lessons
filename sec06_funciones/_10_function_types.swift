/// FUNCTION TYPES
/// 
/// Cada función tiene un tipo específico de datos de tipo
/// function. Este se determina por medio de su firma en 
/// general.
/// 
/// Las funciones son ciudadanos de primera clase por lo
/// cual pueden tratarse como variables.
func main() {

    print("EXAMPLE 01. Show type of function")
    print("addTwoInt(5, 6) -> \(addTwoInt(5, 6))")
    print(type(of: addTwoInt))
    print()

    print("EXAMPLE 02. Show type of function")
    print("printHelloWorld() -> ", terminator: "")
    print(type(of: printHelloWorld))
    print()

    // asignamos variable referencia de tipo función
    let suma: (Int, Int) -> Int = addTwoInt
    print(suma(1, 2))
    print(addTwoInt(1, 2))
    print()
}

// Run application
main()

/// Retorna la suma de dos enteros.
func addTwoInt(_ a: Int, _ b: Int)  -> Int {
    return a+b
}

/// Imprime mensaje "Hello World!"
func printHelloWorld() {
    print("Hello World!")
}