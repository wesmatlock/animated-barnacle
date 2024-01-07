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

    func toggleStatus() {
        isTaskCompleted.toggle()
    }
}

final class TaskManager: ObservableObject {
    @Published var finishedTasks = 0
    @Published var totalTasks = 0
    @Published var pendingTasks = 0
    @Published var completionPercentage: Double = 0

    @Published var categories: [Category] = [
        Category(categoryName: "School", categoryColor: .init(hex: "189988"), associatedTasks: Array(repeating: Task(), count: 15), completedTask: 10),
        Category(categoryName: "Personal", categoryColor: .blue, associatedTasks: Array(repeating: Task(), count: 10), completedTask: 3),
        Category(categoryName: "Work", categoryColor: .red, associatedTasks: Array(repeating: Task(), count: 13), completedTask: 7)
    ]

}
