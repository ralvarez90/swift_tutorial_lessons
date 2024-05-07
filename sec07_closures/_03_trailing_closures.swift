/// TRAILING CLOSURES
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . . ", terminator: "")
    let _ = readLine()
  }

  // some dictionary
  let digitNames: [Int: String] = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine",
  ]

  // some arrayg
  let numbers = [16, 58, 510]

  let strings = numbers.map { (number: Int) -> String in
    var number = number
    var output = ""
    repeat {
      output = digitNames[number % 10]! + output
      number /= 10
    } while number > 0
    return output
  }

  print(strings)
}

// Run application
main()
