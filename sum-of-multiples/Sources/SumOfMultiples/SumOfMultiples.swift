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

        // If the limit is zero then do not continue
        if limit == 0 {
            return 0
        }

        // Remove any multiples that are zero so we're
        // not dividing by zero
        let multiplesExcludingZero = multiples.filter { $0 != 0 }

        // Get a range of values up to but not including
        // the limit
        let rangeOfValues: Range = 1..<limit

        // For each multiple, create an array of integers containing
        // the integers that are multiple of the given value,
        // such as [[3, 6, 9, 12], [6, 12]]
        var numbers = [Array<Int>]()
        for multiple in multiplesExcludingZero {
            numbers.append(rangeOfValues.filter { $0 % multiple == 0})
        }

        // Flatten the resulting multi-dimensional array,
        // remove duplicates,
        // and generate the sum of all multiples.
        return Set(numbers.flatMap { $0 }).reduce(0, +)
    }
}
