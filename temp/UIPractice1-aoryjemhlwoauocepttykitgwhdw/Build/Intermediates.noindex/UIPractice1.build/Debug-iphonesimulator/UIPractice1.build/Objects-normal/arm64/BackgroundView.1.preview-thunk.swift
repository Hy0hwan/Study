import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/UIPractice1/UIPractice1/BackgroundView.swift", line: 1)
import SwiftUI

struct BackgroundView: View {
    var stops: [Gradient.Stop] = [
        .init(color: .darkGreen, location: 0.0),
        .init(color: .darkGreen, location: 0.2),
        .init(color: .lightGreen, location: 0.2),
        .init(color: .lightGreen, location: 0.6),
        .init(color: .darkGreen, location: 0.6),
        .init(color: .darkGreen, location: 0.8),
        .init(color: .lightGreen, location: 0.8),
        .init(color: .lightGreen, location: 0.84),
        .init(color: .darkGreen, location: 0.84),
        .init(color: .darkGreen, location: 1.0)
    ]

    var body: some View {
        LinearGradient(stops: stops, startPoint: .top, endPoint: .bottom)
            .frame(width: __designTimeInteger("#34900_0", fallback: 1000))
            .rotationEffect(.degrees(__designTimeInteger("#34900_1", fallback: -45)))
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
