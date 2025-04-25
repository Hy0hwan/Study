//
//  ColoredRoundedRectButton.swift
//  UIPractice1
//
//  Created by 김효환 on 4/22/25.
//

import SwiftUI

struct ColoredRoundedRectButton: View {
    
    let color: Color
    let action: () -> ()
    
    
    var body: some View {
        
        Button {
            action()
        } label: {
            ZStack {
                Rectangle()
                    .fill(color)
                
                Circle()
                    .fill(.black)
                    .opacity(0.2)
                    .offset(x: -22, y: -22)
                    .frame(width: 30, height: 30)
                
                Circle()
                    .fill(.white)
                    .opacity(0.2)
                    .offset(x: 22, y: 22)
                    .frame(width: 60, height: 60)
            }
            .frame(width: 44, height: 44)
            .clipShape(RoundedRectangle(cornerRadius: 10 ))
        }
        
    }
}

#Preview {
    ColoredRoundedRectButton(color: .red, action: { })
    ColoredRoundedRectButton(color: .yellow, action: { })
    ColoredRoundedRectButton(color: .blue, action: { })

}
