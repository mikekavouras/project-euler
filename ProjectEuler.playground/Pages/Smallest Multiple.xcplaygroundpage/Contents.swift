//: [Largest Palindrome Product](@previous)

/*:
# Smallest Multiple
https://projecteuler.net/problem=5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

**What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20**
*/

import Foundation

//: First attempt

func smallestMultiple(range: Range<Int>) -> Int {
    var result: Int = -1
    for var i = 1;;i++ {
        var found = 0
        for j in range {
            guard i % j == 0 else { break }
            found++
            result = i
        }
        if found == range.count {
            return result
        }
    }
}

// uncomment the line below to execute
// smallestMultiple(1...20)

//: [Next](@next)
