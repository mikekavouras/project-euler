//: [Largest product in a series](@previous)

/*:
# Special Pythagoreon Triplet
https://projecteuler.net/problem=9

A Pythagoreon triplet is a set of three natural numbers, a -> b -> c, for which,

a^2 + b^2 = c^2

For example: 3^2 + 4^2 = 9 + 16 = 25 = 5^2

**There exists exactly one Pythagoreon triplet for which a + b + c = 1000. Find the product of abc.**
*/

import Foundation

func findTheThing(a: Int, b: Int) -> Float? {
    for var a = 0;a < 1000;a++ {
        var b = 0
        while sqrt(pow(Double(a), 2.0) + pow(Double(b), 2.0)) + pow(Double(a), 2.0) + pow(Double(b), 2.0) <= 1000 {
            let c = sqrt(pow(Double(a), 2.0) + pow(Double(b), 2.0))
            if a + b + c == 1000 {
                return a * b * c
            }
            b++
        }
    }
    return nil
}

let a = 3.0
let b = 4.0
let p = 2.0

// a + b + sqrt(pow(a, 2) + pow(b, 2)) = 1000




//: [Next](@next)
