//: [Largest prime factor](@previous)

//: # Largest prime factor
/*: https://projecteuler.net/problem=3

The prime factors of 13195 are 5, 7, 13 and 29.

**What is the largest prime factor of the number *600851475143* ?**
*/

import Foundation

extension Int {
    func isPrime() -> Bool {
        guard self != 1 || self != 2 else { return true }
        let max = ceil(sqrt(Float(self)))
        guard max > 1 else { return true }
        for var i = 2; i <= Int(max); i++ { // slowest part
            if self % i == 0 {
                return false
            }
        }
        return true
    }

    
    func smallestPrimeFactor() -> Int? {
        let max = ceil(sqrt(Float(self)))
        for i in 2..<Int(max) {
            if self % i == 0 {
                return i
            }
        }
        return nil
    }
}


func findLargestPrime(num: Int) -> Int {
    guard !num.isPrime() else { return num }
    return findLargestPrime(num / num.smallestPrimeFactor()!)
}

print(findLargestPrime(600851475143))

//: **run time:** 0.00425s

//: [Next](@next)
