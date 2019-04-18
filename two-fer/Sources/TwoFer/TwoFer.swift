//Solution goes in Sources
class TwoFer: Any {
    static func twoFer(name: String? = nil) -> String {

        if let name = name {
            return "One for \(name), one for me."
        }

        return "One for you, one for me."
    }
}
