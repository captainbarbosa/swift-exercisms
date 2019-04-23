//# Sum Of Multiples
//
// Given a number, find the sum of all the unique multiples of particular numbers up to
// but not including that number.
//
// If we list all the natural numbers below 20 that are multiples of 3 or 5,
//we get 3, 5, 6, 9, 10, 12, 15, and 18.
//
//The sum of these multiples is 78.
//
//## Source
//
//A variation on Problem 1 at Project Euler [http://projecteuler.net/problem=1](http://projecteuler.net/problem=1)


// Numbers below 20, therefore limit is >20
// Multiples of 3 and 5

class SumOfMultiples {
    class func toLimit(_ limit: Int, inMultiples multiples: [Int]) -> Int {

        if limit == 0 {
            return 0
        }

        var numbers = [Int]()

        for multiple in multiples {
            print("multiple: \(multiple)")

            if multiple != 0 {
                for value in 1..<limit {
                    if value % multiple == 0 {
                        numbers.append(value)
                    }
                }
            }
        }

        let finalMultiples = Array(Set(numbers))
        return finalMultiples.reduce(0, +)
    }
}
