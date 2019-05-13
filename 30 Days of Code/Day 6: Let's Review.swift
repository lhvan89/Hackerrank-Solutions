import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)

    // Print the even-indexed characters
    // Write your code here
    let arr = Array(string)

    for (index, value) in arr.enumerated() {
        if index % 2 == 0 {
            print(value, terminator: "")
        }
    }
    
    // Print a space
    print(" ", terminator: "")
	
    for (index, value) in arr.enumerated() {
        if index % 2 != 0 {
            print(value, terminator: "")
        }
    }
    
    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}

