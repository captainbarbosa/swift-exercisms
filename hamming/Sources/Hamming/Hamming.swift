//Solution goes in Sources

class Hamming {
    class func compute(_ original: String, against: String) -> Int? {
        var hammingDistance: Int = 0
        
        let originalDNA = Array(original)
        let comparisonDNA = Array(against)
        
        if originalDNA.count != comparisonDNA.count {
            return nil
        }
        
        // zip is neato! https://developer.apple.com/documentation/swift/1541125-zip
        for (originalElement, comparisonElement) in zip(originalDNA, comparisonDNA) {
            if originalElement != comparisonElement {
                hammingDistance += 1
            }
        }
        
        return hammingDistance
    }
}
