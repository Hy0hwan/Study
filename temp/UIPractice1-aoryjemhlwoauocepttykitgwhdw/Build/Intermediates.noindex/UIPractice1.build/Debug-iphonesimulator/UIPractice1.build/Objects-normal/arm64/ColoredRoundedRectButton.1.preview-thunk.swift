import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/UIPractice1/UIPractice1/ColoredRoundedRectButton.swift", line: 1)
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
                    .opacity(__designTimeFloat("#72765_0", fallback: 0.2))
                    .offset(x: __designTimeInteger("#72765_1", fallback: -22), y: __designTimeInteger("#72765_2", fallback: -22))
                    .frame(width: __designTimeInteger("#72765_3", fallback: 30), height: __designTimeInteger("#72765_4", fallback: 30))
                
                Circle()
                    .fill(.white)
                    .opacity(__designTimeFloat("#72765_5", fallback: 0.2))
                    .offset(x: __designTimeInteger("#72765_6", fallback: 22), y: __designTimeInteger("#72765_7", fallback: 22))
                    .frame(width: __designTimeInteger("#72765_8", fallback: 60), height: __designTimeInteger("#72765_9", fallback: 60))
            }
            .frame(width: __designTimeInteger("#72765_10", fallback: 44), height: __designTimeInteger("#72765_11", fallback: 44))
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#72765_12", fallback: 10) ))
        }
        
    }
}

#Preview {
    ColoredRoundedRectButton(color: .red, action: { })
    ColoredRoundedRectButton(color: .yellow, action: { })
    ColoredRoundedRectButton(color: .blue, action: { })

}
