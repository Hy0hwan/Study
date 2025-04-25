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
                
                Image(systemName: "eye.slash")
                    .foregroundStyle(.secondary)
            } else {
                TextField(title, text: $value)
            }
            
            
        }
        .padding()
        .padding(.horizontal)
        .overlay{
            Capsule()
                .stroke(Color.primary.opacity(0.7), lineWidth: 1)
        }    }
}

#Preview {
    VStack{
        RoundedBorderTextField(title: "아이디", systemName: "person", value: .constant(""))
        
        RoundedBorderTextField(title: "비밀번호", systemName: "lock.shield", value: .constant(""), secure: true)
    }
}
