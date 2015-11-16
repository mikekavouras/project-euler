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


func pythagoreonTriplet() -> (Int, Int, Int) {
    
    var sum = 0
    var m = 1
    
    var a = 0
    var b = 0
    var c = 0
    
    while sum != 1000 {
        
        m++
        
        for n in 1...m-1{
            guard sum != 1000 else { break }
            
            a = (m * m) + (n * n)
            b = 2 * m * n
            c = (m * m) - (n * n)
            
            sum = a + b + c
        }
    }
    
    return (a, b, c)
}

let t = pythagoreonTriplet()
print(t.0 * t.1 * t.2)


//: [Next](@next)
