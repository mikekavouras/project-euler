//: [Smallest Multiple](@previous)

/*:
# 10001st prime
https://projecteuler.net/problem=6

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

**What is the 10 001st prime number?**
*/

import Foundation

//: First attempt

extension Int {
    func isPrime() -> Bool {
        guard self != 1 || self != 2 else { return true }
        let max = Int(ceil(sqrt(Float(self))))
        guard max > 1 else { return true }
        for var i = 2; i <= max; i++ {
            if self % i == 0 {
                return false
            }
        }
        return true
    }
}

func nthPrime(n: Int) -> Int {
    var j = 0
    for var i = 1;;i++ {
        if i.isPrime() {
            j++
            if j == n {
                return i
            }
        }
    }
}

// uncomment the line below to execute
// nthPrime(10001)


//: [Next](@next)
