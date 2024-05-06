/// RETORNO IMPLÍCITO
/// 
/// Podemos retornar valores dentro deun bloque si al final
/// colocamos el valor que queremso retornar.
func main() {

    print("EXAMPLE 01. Invoque function with implicit return")
    print(greeting(person: "Rodrigo Álvarez"))
    print(anotherGreeting(person: "Rodrigo Álvarez"))
    print()
}

/// Retorna string sin especificar explícitamente el valor
/// de retornoa.
func greeting(person: String) -> String {
    "Hello, " + person + "!"
}

/// Retorna String explícito.
func anotherGreeting(person: String) -> String {
    return "Hello, \(person)!"
}

// Run application
main()