/// FUNCIONES COMO PARÁMETROS
/// 
/// Una función puede recibir como parámetros funciones y como
/// valores de retorno.
func main() {

    // show end message
    defer {
        print("\nPress any key to continue . . .")
        let _ = readLine()
    }

    // call function
    print("1+2:", terminator: " ")
    print(getMathResult(1, 2, getSum))
    print("1*2:", terminator: " ")
    print(getMathResult(1, 2, getProduct))
    print()

    // get function
    let toExec = chooseStepFunction(backward: false)
    print(toExec(10))
}

/// Get arithmetic operation
func getMathResult(_ a: Int, _ b: Int, _ mathCallback: (Int, Int) -> Int) -> Int{
    return mathCallback(a, b)
}

/// Get the sum of two integers
func getSum(_ a: Int, _ b: Int) -> Int {
    return a+b
}

/// Get the product of two integers
func getProduct(_ a: Int, _ b: Int) -> Int  {
    return a*b
}

/// Retorna el siguiente entero al argumento
func stepForward(_ input: Int) -> Int {
    return input + 1
}

/// Retorna el anterior entero al argumento
func steppBackward(_ input: Int) -> Int {
    return input - 1
}

/// Retorna función dependiendo del argumento
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? steppBackward : stepForward
}

// Run application
main()