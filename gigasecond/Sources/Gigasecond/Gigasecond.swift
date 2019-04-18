//Solution goes in Sources
import Foundation

class Gigasecond {
    let dateFormatter = DateFormatter()
    var description: String?

    init?(from string: String) {

        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

        if let date = dateFormatter.date(from: string) {
            let power = pow(10, 9)
            let gigasecond = NSDecimalNumber(decimal: power).doubleValue
            let interval = TimeInterval(exactly: gigasecond)


            let newDate = date.addingTimeInterval(interval!)
            self.description = dateFormatter.string(from: newDate)
        } else {
            self.description = nil
        }
    }
}
