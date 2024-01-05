import SwiftUI

final class TaskViewModel: ObservableObject {
    var taskName: String
    var taskId: String
    var taskDate: String
    var isTaskCompleted: Bool
    var taskCreatedDate: Date
    var taskPriority: Bool

    init(task: Task) {
        
        self.taskName = task.taskName
        self.taskId = task.id
        self.taskDate = DateManager.dayFormatter.string(from: task.createdDate)
        self.isTaskCompleted = task.taskCompleted
        self.taskCreatedDate = task.createdDate
        self.taskPriority = task.isPriority
    }
}
