import SwiftUI

class MainViewModel: ObservableObject {
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

    lazy var greeting: String = {
        let date = Date()

//        guard hour = Int(Constants.)
        return ""
    }()
}
