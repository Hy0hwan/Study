import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/UIPractice1/UIPractice1/RoundedBorderTextField.swift", line: 1)
//
//  RoundedBorderTextField.swift
//  UIPractice1
//
//  Created by 김효환 on 4/22/25.
//

import SwiftUI

struct RoundedBorderTextField: View {
    
    let title: String
    let systemName: String
    
    @Binding var value: String
    
    var secure: Bool = false
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .symbolVariant(.fill)
            
            if secure {
                SecureField(title, text: $value)
                
                Image(systemName: __designTimeString("#48540_0", fallback: "eye.slash"))
                    .foregroundStyle(.secondary)
            } else {
                TextField(title, text: $value)
            }
            
            
        }
        .padding()
        .padding(.horizontal)
        .overlay{
            Capsule()
                .stroke(Color.primary.opacity(__designTimeFloat("#48540_1", fallback: 0.7)), lineWidth: __designTimeInteger("#48540_2", fallback: 1))
        }    }
}

#Preview {
    VStack{
        RoundedBorderTextField(title: __designTimeString("#48540_3", fallback: "아이디"), systemName: __designTimeString("#48540_4", fallback: "person"), value: .constant(__designTimeString("#48540_5", fallback: "")))
        
        RoundedBorderTextField(title: __designTimeString("#48540_6", fallback: "비밀번호"), systemName: __designTimeString("#48540_7", fallback: "lock.shield"), value: .constant(__designTimeString("#48540_8", fallback: "")), secure: __designTimeBoolean("#48540_9", fallback: true))
    }
}
