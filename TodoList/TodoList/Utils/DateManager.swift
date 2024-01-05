import Foundation

struct DateManager {
    static let dayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        return formatter
    }()

    static let hourFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "h"
        return formatter
    }()


    static let monthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "h"
        return formatter
    }()

    static func getCurrentDate() -> String {
        Self.dayFormatter.string(from: Date())
    }

    static func getCurrentMonth() -> String {
        Self.monthFormatter.string(from: Date())
    }
}
