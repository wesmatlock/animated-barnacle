import Foundation

enum Fill: String, CaseIterable {
    case blue, purple, orange, teal, yellow
}

struct FillRandomizer {
    func getRandomFill() -> Fill {
        let value = Int.random(in: 0 ..< Fill.allCases.count)
        return Fill.allCases[value]
    }
}

