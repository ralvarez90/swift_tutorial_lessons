/// OPTIONAL RETURN
///
/// Si el tipo de tupla que se devolverá desde una función 
/// tiene el potencial de no tener 'ningún valor' para toda 
/// la tupla, puede utilizar un tipo de retorno de tupla opcional 
/// para reflejar el hecho de que toda la tupla puede ser nula.
func main() {

    print("EXAMPLE 01. Using function that returns Optional Tuple")
    if let bounds = getMinAndMax(array: [8, -6, 2, 109, 3, 71]) {
        print("Min value: \(bounds.min)")
        print("Max value: \(bounds.max)")
    }

    print()
}


/// Función que retorna una tupla Optional de enteros.
func getMinAndMax(array: [Int]) -> (min: Int, max: Int)? {
    
    // caso array vacio
    if array.isEmpty {return nil}

    // centinelas
    var currentMin: Int = array[0]
    var currentMax: Int = array[0]

    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }

    return (currentMin, currentMax)
}

// Run application
main()