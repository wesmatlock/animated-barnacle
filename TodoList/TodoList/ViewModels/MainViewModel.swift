import SwiftUI

final class MainViewModel: ObservableObject {
    @Environment(\.colorScheme) var colorScheme
    @Published var showSearchBar = false {
        didSet {
            if showSearchBar {
                withAnimation(.default) {
                    viewOpacity = 0
                }
            } else {
                withAnimation(.default) {
                    viewOpacity = 1
                }
            }
        }
    }

    @Published var viewOpacity: Double = 1
    @Published var searchQuery = ""
    @Published var searchActive = false

    let user = User(name: "-Name-", fullName: "-Full Name-", role: "-Role-", motto: "-Need A Good Motto-")

    init() {}

    lazy var greeting: String = {
        let date = Date()

        guard let hour = Int(DateManager.hourFormatter.string(from: date)) else { return "" }
        if hour > 0 && hour < 12 {
            return "Good Morning,"
        } else if hour >= 12 && hour < 16 {
            return "Good Afternoon,"
        } else {
            return "Good Evening,"
        }
    }()
}
