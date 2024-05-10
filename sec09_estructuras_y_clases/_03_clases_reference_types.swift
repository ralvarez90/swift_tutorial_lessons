/// CLASES ARE REFERENCE TYPES
///
/// Los objetos instancias de clases almacenan referencias.
func main() {

  // end message
  defer {
    print("\nPress any key to continue . . .", terminator: "")
    let _ = readLine()
  }

  // create struct
  struct Resolution {
    var width = 0
    var height = 0
  }

  // create class
  class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
  }

  // create instance
  let tenEigthty = VideoMode()
  tenEigthty.resolution = Resolution(width: 1080, height: 1024)
  tenEigthty.interlaced = true
  tenEigthty.name = "1080i"
  tenEigthty.frameRate = 25.0
  tenEigthty.resolution.height = 10
  tenEigthty.resolution.width = 10

  func resetVideoMode(v: VideoMode) {
    if v.resolution.height != 0 {
      v.resolution.height = 0
    }

    if v.resolution.width != 0 {
      v.resolution.width = 0
    }
  }

  // change state of instance of class
  // clases are reference type
  resetVideoMode(v: tenEigthty)
  print(tenEigthty.resolution)
}

// Run application
main()
