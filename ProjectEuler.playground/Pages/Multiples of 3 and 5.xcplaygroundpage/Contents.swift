//: # Multiples of 3 and 5
/*: https://projecteuler.net/problem=1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.  

**Find the sum of all the multiples of 3 or 5 below 1000.**

*/

//: O(n)
func sumOfMultplesOf3Or5(max: Int) -> Int {
    var sum = 0
    for i in 0..<max {
        if i % 3 == 0 || i % 5 == 0 {
            sum += i
        }
    }
    return sum
}

print(sumOfMultplesOf3Or5(1000))

//: O(n)
var nums = (0..<1000).map { $0 }
var filtered = nums.filter { $0 % 3 == 0 || $0 % 5 == 0 }
var sum = filtered.reduce(0, combine: +)

print(sum)

//: [Even Fibonacci numbers](@next)
