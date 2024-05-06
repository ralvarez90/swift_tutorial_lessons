/// VARIADIC FUNCTIONS
/// 
/// Son funciones a las cuales se les puede pasar un número
/// variable de argumentos. Estos se almacenan en un arreglo
/// constante.
func main() {

    // test 1
    print("EXAMPLE 01. Arithmetic mean")
    print("1+2+3+4+5 -> \(arithmeticMean(1, 2, 3, 4, 5))")
    print("With no args -> \(arithmeticMean())")
}

// Run application
main()

/// Retorna la media artimética de una serie de números.
func arithmeticMean(_ numbers: Double...) -> Double {
    if numbers.count == 0 {return 0.0}

    var total = 0.0
    for n in numbers {
        total += n
    }

    return total/Double(numbers.count)
}