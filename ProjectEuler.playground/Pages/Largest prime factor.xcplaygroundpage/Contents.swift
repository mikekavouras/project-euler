//: [Largest prime factor](@previous)

//: # Largest prime factor
/*: https://projecteuler.net/problem=3

The prime factors of 13195 are 5, 7, 13 and 29.

**What is the largest prime factor of the number *600851475143* ?**
*/

import Foundation

extension Int {
    func isPrime() -> Bool {
        let max = Int(ceil(sqrt(Float(self))))
        guard max > 1 else { return true }
        for var i = 2; i < max; i++ { // slowest part
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

/* Attempt 1

func findFirstPrime(num: Int) -> Int? {
    let max = ceil(sqrt(Float(num)))
    for i in 2..<Int(max) {
        if num % i == 0 {
            return i
        }
    }
    return nil
}

func findLargestPrime(num: Int) -> Int {
    guard !num.isPrime() else { return num }

    var primes = [Int]()
    let n = findFirstPrime(num)
    primes.append(n!)

    while true {
        let d = primes.reduce(1, combine: *)
        let next = num / d
        if next.isPrime() {
            primes.append(next)
            break
        }
        let n = findFirstPrime(num / d)
        primes.append(n!)
    }
    
    return primes.last!
}

print(NSDate())
print(findLargestPrime(6008514751436348123))
print(NSDate())

*/

//: Attempt 2

func findLargestPrime(num: Int) -> Int {
    guard !num.isPrime() else { return num }
    return findLargestPrime(num / num.smallestPrimeFactor()!)
}

print(NSDate())
print(findLargestPrime(600851475143))
print(NSDate())

//: [Next](@next)
