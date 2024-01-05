import SwiftUI

extension Color {

    init(hex: String) {
        self.init(UIColor(hex: hex))
    }

    static func randomColor() -> Color {
        return Color(UIColor.random())
    }
}
extension Color {

//    static let background: Color = Color(UIColor.systemBackground)
    static let label: Color = Color(UIColor.label)

    static let backgroundColor: Color = Color(UIColor(named: "backgroundColor")!)


    // MARK: - Functions
    static func sidebarColor(scheme: ColorScheme) -> Color {
        if (scheme == .light) {
            return Color(hex: "efefef")
        } else {
            return Color(hex: "131312")
        }
    }

    static func getColorForTick(colorScheme: ColorScheme) -> Color {
        if (colorScheme == .light) {
            return Color(hex: "ececec")
        } else {
            return Color(hex: "3f3f3f")
        }
    }

    static func categoryColor(scheme: ColorScheme) -> Color {
        if (scheme == .light) {
            return Color(hex: "f3f3f3")
        } else {
            return Color(hex: "101010")
        }
    }


    static func getColorForStrikeout(colorScheme: ColorScheme) -> Color {
        if (colorScheme == .light) {
            return Color(hex: "1b1b1b")
        } else {
            return Color(hex: "eaeaea")
        }
    }
}

