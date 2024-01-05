import SwiftUI

struct Category: Hashable {
    let categoryName: String
    let categoryColor: Color
    let associatedTasks: [Task]
    let completedTask: Int

    var completionPercentage: Double {
        let totalTasks = associatedTasks.count

        let completedPercentage: Double = Double(completedTask) / Double(totalTasks) * 100
        return completedPercentage
    }
}
