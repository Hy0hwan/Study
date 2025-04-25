//
//  Password.swift
//  EvenOdd
//
//  Created by 김효환 on 4/17/25.
//

import SwiftUI



struct Password: View {
    
    @State var password: String = ""
    @State var strength: String = "weak"
    
    @State var color1: Color = .red
    @State var color2: Color = .clear
    @State var color3: Color = .clear
    
    var body: some View {
        VStack(alignment: .leading ){
            SecureField("", text: $password)
                .textFieldStyle(.roundedBorder)
                .onChange(of: password) {
                    if password.count >= 12 {
                        color1 = .green
                        color2 = .green
                        color3 = .green
                        strength = "strong"
                    } else if password.count >= 5 {
                        color1 = .yellow
                        color2 = .yellow
                        color3 = .clear
                        strength = "good"
                    } else if password.count < 5 {
                        color1 = .red
                        color2 = .clear
                        color3 = .clear
                        strength = "weak"
                    }
                }
            
            HStack {
                Rectangle()
                    .foregroundStyle(color1)
                Rectangle()
                    .foregroundStyle(color2)
                Rectangle()
                    .foregroundStyle(color3)
            }
            .frame(height: 20)
            
            Text(strength)
            
            
        }
        .padding()
        
    }
}

#Preview {
    Password()
}



