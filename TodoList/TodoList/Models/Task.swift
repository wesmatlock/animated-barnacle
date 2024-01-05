import Foundation

struct Task: Codable, Identifiable, Hashable {
    let id: String
    let taskName: String
    let taskCompleted: Bool
    let createdDate: Date
    let isPriority: Bool

    init(id: String, taskName: String, taskCompleted: Bool, createdDate: Date, isPriority: Bool) {
        self.id = id
        self.taskName = taskName
        self.taskCompleted = taskCompleted
        self.createdDate = createdDate
        self.isPriority = isPriority
    }

    init() {
        id = UUID().uuidString
        taskName = ""
        taskCompleted = false
        createdDate = .init()
        isPriority = false
    }
}
