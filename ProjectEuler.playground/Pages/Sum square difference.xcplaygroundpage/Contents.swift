//: [Smallest Multiple](@previous)

/*:
# Smallest Multiple
https://projecteuler.net/problem=6

The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 552 = 3025  

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

**Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.**
*/

import Foundation

func sumOfSquares(range: Range<Int>) -> Int {
    var sum: Float = 0
    for i in range {
        sum += pow(Float(i), 2.0)
    }
    return Int(sum)
}

func squareOfSum(range: Range<Int>) -> Int {
    var sum = 0
    for i in range {
        sum += i
    }
    return Int(pow(Float(sum), 2.0))
}

squareOfSum(1...100) - sumOfSquares(1...100)

//: [Next](@next)
