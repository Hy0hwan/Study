//
//  BackgroundView.swift
//  UIPractice1
//
//  Created by KxCoding on 4/22/25.
//

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
            .frame(width: 1000)
            .rotationEffect(.degrees(-45))
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
