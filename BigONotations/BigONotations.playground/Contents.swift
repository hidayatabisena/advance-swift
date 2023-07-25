import UIKit

// Main purpose of BigO is to compare performance of algorithms in terms of time and space
// Most common characteristics are:
/// Constant O(1) --> Quadratic O(n^2)
/// Linear O9n) --> Logarithmic O(logn)
// Always think worst case when measuring O(n)
// trade-off time for space

func findBook(_ arr: [String]) {
    let begin = Date()
    let after = Date()
    
    // Linear time - O(n)
    for i in 0..<arr.count {
        if arr[i] == "potter" {
            print("Harry Potter and The Half Blood Prince")
        }
    }
    
    let component = Calendar.current.dateComponents([.nanosecond], from: begin, to: after)
    let miliSeconds: Double = Double(component.nanosecond! / 1000000)
    print("Find this book took: \(miliSeconds)")
    
}

let potter = Array<String>(repeating: "", count: 1)
findBook(potter)

// Constant time O(1)
func constantTime(_ n: Int) -> Int {
    let result = n * n
    return result
}

// Naive brute force O(n^2)
func commonItemsBrute(_ A: [Int], _ B: [Int]) -> Bool {
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j] {
                return true
            }
        }
    }
    return false
}
commonItemsBrute([1, 2, 3], [4, 5, 6])
commonItemsBrute([1, 2, 3], [3, 5, 6])

// Convert to hash and lookup via other index
func commonItemsHash(_ A: [Int], _ B: [Int]) -> Bool {
    // Still looping but not nested - O(2n) vs O(n^2)
    var hashA = [Int: Bool]()
    for a in A {
        hashA[a] = true
    }
    
    // Lookup in the hash to see if elements of B exist
    for b in B {
        if hashA[b] == true {
            return true
        }
    }
    return false
}
commonItemsBrute([1, 2, 3], [4, 5, 6])
commonItemsBrute([1, 2, 3], [3, 5, 6])
