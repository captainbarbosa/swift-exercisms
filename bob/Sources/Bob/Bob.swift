//Introduction

//Bob is a lackadaisical teenager. In conversation, his responses are very limited.
//Bob answers 'Sure.' if you ask him a question.
//He answers 'Whoa, chill out!' if you yell at him.
//He says 'Fine. Be that way!' if you address him without actually saying anything.
//He answers 'Whatever.' to anything else.

import Foundation

class Bob {
    class func hey(_ input: String) -> String {

        // Since input is a let constant, make a copy of it
        var copyInput: String = input
        copyInput.removeAll(where: { $0 == " " })

        var result: String

        switch copyInput {
        case _ where copyInput.isEmpty == true:
            result = "Fine. Be that way!"
        case _ where copyInput.last == "?":
            result = "Sure."
        case _ where copyInput.containsLetters == false:
            result = "Whatever."
        case _ where copyInput.isUppercase:
            result = "Whoa, chill out!"
        default:
            result = "Whatever."
        }

        return result
    }
}

extension String {
    var isUppercase: Bool {
        return (self == self.uppercased()) ? true : false
    }

    var containsLetters: Bool {
        if self.rangeOfCharacter(from: CharacterSet.letters) != nil {
            return true
        } else {
            return false
        }
    }
}
