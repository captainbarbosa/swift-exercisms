//# RNA Transcription
//
//Given a DNA strand, return its RNA complement (per RNA transcription).
//
//Both DNA and RNA strands are a sequence of nucleotides.
//
//The four nucleotides found in DNA are adenine (**A**), cytosine (**C**),
//guanine (**G**) and thymine (**T**).
//
//The four nucleotides found in RNA are adenine (**A**), cytosine (**C**),
//guanine (**G**) and uracil (**U**).
//
//Given a DNA strand, its transcribed RNA strand is formed by replacing
//each nucleotide with its complement:
//
//* `G` -> `C`
//* `C` -> `G`
//* `T` -> `A`
//* `A` -> `U`
//
//## Source
//
//Hyperphysics [http://hyperphysics.phy-astr.gsu.edu/hbase/Organic/transcription.html](http://hyperphysics.phy-astr.gsu.edu/hbase/Organic/transcription.html)

struct RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide(message: String)
    }
}

class Nucleotide {
    var strand: String

    init(_ strand: String) {
        self.strand = strand
    }

    func complementOfDNA() throws -> String {
        let transcribedRNA = try self.strand.map { (value: Character) -> Character in
            switch value {
            case let value where value == Character("G"):
                return "C"
            case let value where value == "C":
                return "G"
            case let value where value == "T":
                return "A"
            case let value where value == "A":
                return "U"
            default:
                throw RnaTranscription.TranscriptionError.invalidNucleotide(message: "\(value) is not a valid Nucleotide")
            }
        }

        return String(transcribedRNA)
    }
}
