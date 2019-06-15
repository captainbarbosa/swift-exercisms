// Instructions
// Calculate the number of grains of wheat on a chessboard given that the number
// on each square doubles.
//
// There once was a wise servant who saved the life of a prince. The king
// promised to pay whatever the servant could dream up. Knowing that the
// king loved chess, the servant told the king he would like to have grains
// of wheat. One grain on the first square of a chess board. Two grains on
// the next. Four on the third, and so on.
//
// There are 64 squares on a chessboard.
//
// Write code that shows:
// - how many grains were on each square, and
// - the total number of grains
//
// ## For bonus points
//
// Did you get the tests passing and the code clean? If you want to, these
// are some additional things you could try:
//
// - Optimize for speed.
// - Optimize for readability.

class Grains {
    static let total:UInt64 = 18_446_744_073_709_551_615

    class func square(_ inputValue: Int) throws -> UInt64 {
        let upperValue: Int = inputValue
        let range = 1...upperValue
        var counter: UInt64 = 0

        if upperValue > range.upperBound {
            throw GrainsError.inputTooHigh(message: "Input[\(upperValue)] invalid. Input should be between 1 and 64 (inclusive)")
        }

        if upperValue < range.lowerBound {
            throw GrainsError.inputTooLow(message: "Input[\(upperValue)] invalid. Input should be between 1 and 64 (inclusive)")
        }

        for value in range {
            let squareValue = value * 2
            counter = counter + UInt64(squareValue)
        }

        return counter
    }

    enum GrainsError: Error {
        case inputTooLow(message: String)
        case inputTooHigh(message: String)
    }
}

