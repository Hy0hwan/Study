import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/EvenOdd/EvenOdd/Password.swift", line: 1)
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
            SecureField(__designTimeString("#60333_0", fallback: ""), text: $password)
                .textFieldStyle(.roundedBorder)
                .onChange(of: password) {
                    if password.count >= __designTimeInteger("#60333_1", fallback: 12) {
                        color1 = .green
                        color2 = .green
                        color3 = .green
                        strength = __designTimeString("#60333_2", fallback: "strong")
                    } else if password.count >= __designTimeInteger("#60333_3", fallback: 5) {
                        color1 = .yellow
                        color2 = .yellow
                        color3 = .clear
                        strength = __designTimeString("#60333_4", fallback: "good")
                    } else if password.count < __designTimeInteger("#60333_5", fallback: 5) {
                        color1 = .red
                        color2 = .clear
                        color3 = .clear
                        strength = __designTimeString("#60333_6", fallback: "weak")
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
            .frame(height: __designTimeInteger("#60333_7", fallback: 20))
            
            Text(strength)
            
            
        }
        .padding()
        
    }
}

#Preview {
    Password()
}



