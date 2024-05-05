/// SUBSTRINGS
///
///
///
func main() {
  showExample01()
}

/// Obtensión de substrings
func showExample01() {
  print("EXAMPLE 01. Get substrings")

  let greeting = "Hello World!"
  let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
  let beginning = greeting[..<index]
  print(String(beginning))
  print()
}

/// Run application
main()
