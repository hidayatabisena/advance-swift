import UIKit

struct Person {}

let ints = [Int]()
let strings = [String]()
let people = [Person]()

let arrayOfSpecificSize = Array<Int>(repeating: 1, count: 10)

var array = ["a", "b", "c", "d"]
// array.insert("e", at: 99)
array.remove(at: 1)
array.insert("b", at: 1)
array.append("e")

print(array)

// Important concept
// Random access - 0(1)
// Insert/Delete - O(n)
// Arrays can shrink and grow - O(n)
// Arrays in Swift handle heavy lifting task and it's awesome

// Example: Rotate array to right N times
/// Solving: 1. Start Brute Force
///       2. Use paper to jot down
///       3. Handle edge cases
///       4. Optimize after
///
func solution(A: [Int], K: Int) -> [Int] {
    guard !A.isEmpty else { return [] }
    guard K > 0 else { return A }
    
    var result = A
    for _ in 1...K { // O(n)
        result = rotateRightOnce(A: result)
    }
    
    return result
}

func rotateRightOnce(A: [Int]) -> [Int] {
    var newArray = Array<Int>(repeating: 0, count: A.count)
    
    for i in 0..<A.count - 1 {
        newArray[i + 1] = A[i]
    }
    newArray[0] = A.last!
    
    return newArray
}

rotateRightOnce(A: [1, 2, 3, 4, 5])

solution(A: [1, 2, 3, 4, 5], K: 1)
solution(A: [1, 2, 3, 4, 5], K: 2)
solution(A: [1, 2, 3, 4, 5], K: 3)

solution(A: [3, 8, 9, 7, 6], K: 3)


// Dash phone number
// Reformat to "-" and "-xxx" or "-xx" to block of two number
func solution(_ S: String) -> String {
    let noSpace = S.replacingOccurrences(of: " ", with: "")
    let noSpaceDash = noSpace.replacingOccurrences(of: "-", with: "")
    
    var result = ""
    var count = -2
    for c in noSpaceDash {
        result.append(c)
        if count % 3 == 0 {
            result.append("-")
        }
        count += 1
    }
    
    // trim last dash
    if result.last == "-" {
        result = String(result.dropLast())
    }
    
    // if second last char has a dash (-x)
    // reformat last three chars to (-xx)
    var chars = Array(result)
    let secondLastPointer = chars.count - 2
    if chars[secondLastPointer] == "-" {
        chars[secondLastPointer] = chars[secondLastPointer - 1]
        chars[secondLastPointer - 1] = "-"
    }
        
    
    return String(chars)
}

solution("123456789")
solution("0812821285567") // edge cases
solution("081282128556")
solution("+62 - 224756-8") // edge cases

