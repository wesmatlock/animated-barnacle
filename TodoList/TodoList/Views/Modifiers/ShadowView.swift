import SwiftUI

struct ShadowView<T: Shape>: ViewModifier {
    let shape: T

    var xOffset: CGFloat
    var yOffset: CGFloat

    var opacity: Double
    var lineWidth: CGFloat = 3

    var backgroundColor: Color

    var needsBrightness: Bool
    var colorScheme: ColorScheme

    var needStrokeColor: Bool
    var strokeColor: Color

    init(
        xOffset: CGFloat,
        yOffset: CGFloat,
        opacity: Double = 1,
        lineWidth: CGFloat = 3,
        backgroundColor: Color = .background,
        needsBrightness: Bool = false,
        colorScheme: ColorScheme,
        needStrokeColor: Bool = false,
        strokeColor: Color = .label,
        @ViewBuilder shapeView: () -> T
    ) {
        self.xOffset = xOffset
        self.yOffset = yOffset
        self.opacity = opacity
        self.lineWidth = lineWidth
        self.backgroundColor = backgroundColor
        self.needsBrightness = needsBrightness
        self.colorScheme = colorScheme
        self.needStrokeColor = needStrokeColor
        self.strokeColor = strokeColor
        self.shape = shapeView()
    }

    func body(content: Content) -> some View {
        ZStack {
            shape
                .offset(x: xOffset, y: yOffset)
                .opacity(opacity)

            shape
                .foregroundStyle(backgroundColor)
                .if(needsBrightness) { view in
                    view
                        .brightness(0.075)
                }

            shape
                .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
                .opacity(opacity)
                .if(needsBrightness) { view in
                    view
                        .foregroundStyle(strokeColor)
                }

            content
        }
        .preferredColorScheme(colorScheme)
    }
}

extension View {
    func shadowOverlay<V: Shape>(
        xOffset: CGFloat = 9,
        yOffset: CGFloat = 10,
        lineWidth: CGFloat = 3,
        opacity: Double = 1,
        backgroundColor: Color = Color.background,
        needsBrightness: Bool = false,
        colorScheme: ColorScheme,
        needsStrokeColor: Bool = false,
        strokeColor: Color = .label,
        content: V
    ) -> some View {
        modifier(
            ShadowView(xOffset: xOffset, yOffset: yOffset, opacity: opacity, lineWidth: lineWidth, backgroundColor: backgroundColor, needsBrightness: needsBrightness, colorScheme: colorScheme, needStrokeColor: needsStrokeColor, strokeColor: strokeColor, shapeView: {
                content
            })
        )
    }
}

