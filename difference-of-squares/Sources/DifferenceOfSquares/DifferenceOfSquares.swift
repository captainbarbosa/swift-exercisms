//Solution goes in Sources
class Squares {
    var squareOfSum: Int // (1 + 2 + ... + 10)² = 55² = 3025.
    var sumOfSquares: Int // 1² + 2² + ... + 10² = 385.
    var differenceOfSquares: Int // squareOfSum - sumOfSquares

    init(_ lastValue: Int) {

        let valuesToSquare: CountableClosedRange = 1...lastValue

        self.squareOfSum = valuesToSquare.reduce(0) { (result, item) in
            return result + item
        }

        self.squareOfSum = squareOfSum * squareOfSum

        self.sumOfSquares = valuesToSquare.reduce(0) { (result, item) in
            return result + (item * item)
        }

        self.differenceOfSquares = squareOfSum - sumOfSquares
    }
}
