import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/CreditCalc/CreditCalc/ContentView.swift", line: 1)
//
//  ContentView.swift
//  CreditCalc
//
//  Created by 김효환 on 4/17/25.
//


import SwiftUI

struct ContentView: View {
    @State var credit: String = ""
    @State var score: String = "Show Me The 학점!"
    @State var placeholder: String = "숫자만 입력해주세요~"
    
    var body: some View {
        VStack {
            Text(score)
                .font(.largeTitle)
            TextField(placeholder, text: $credit)
                .textFieldStyle(.roundedBorder)
            
            
            Button {
                if let credit2 = Int(credit) {
                    switch credit2 {
                    case 97...100:
                        score = __designTimeString("#7828_0", fallback: "A+")
                    case 90...96:
                        score = __designTimeString("#7828_1", fallback: "A")
                    case 87...89:
                        score = __designTimeString("#7828_2", fallback: "B+")
                    case 80...86:
                        score = __designTimeString("#7828_3", fallback: "B")
                    case 77...79:
                        score = __designTimeString("#7828_4", fallback: "C+")
                    case 70...76:
                        score = __designTimeString("#7828_5", fallback: "C")
                    case 67...69:
                        score = __designTimeString("#7828_6", fallback: "D+")
                    case 60...66:
                        score = __designTimeString("#7828_7", fallback: "D")
                    case 0...59:
                        score = __designTimeString("#7828_8", fallback: "F")
                    default:
                        score = __designTimeString("#7828_9", fallback: "0~100 사이로 입력해주세요!")
                    }
                } else {
                    score = __designTimeString("#7828_10", fallback: "이런놈들 꼭 있더라")
                }
                
            } label: {
                Text(__designTimeString("#7828_11", fallback: "계산하기"))
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            
       
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
