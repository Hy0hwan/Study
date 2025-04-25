//
//  Password.swift
//  EvenOdd
//
//  Created by KxCoding on 4/17/25.
//

import SwiftUI

// ~5 weak
// ~ 11 good
// 12 ~ strong

// SwiftUI : Color
// UIKit : UIColor

struct Password: View {
    @State var password: String = ""
    @State var strength: String = "weak"

    @State var color1: Color = .red
    @State var color2: Color = .clear
    @State var color3: Color = .clear

    var body: some View {
        VStack(alignment: .leading) {
            SecureField("", text: $password)
                .textFieldStyle(.roundedBorder)
                .onChange(of: password) {
                    // 제한적인 조건, 까다로운 조건
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
                    } else {
                        //
                    }
                    // 5 이상이면 두칸만 노란색으로, good
                    // 5 미만이면 한칸만 빨간색으로, weak
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


/*
 학점 계산기

 입력: 숫자
 출력:

 A+    97~100
 A    90~96
 B+    87~89
 B    80~86
 C+    77~79
 C    70~76
 D+    67~69
 D    60~66
 F    0~59
 */











