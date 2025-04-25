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
                        score = "A+"
                    case 90...96:
                        score = "A"
                    case 87...89:
                        score = "B+"
                    case 80...86:
                        score = "B"
                    case 77...79:
                        score = "C+"
                    case 70...76:
                        score = "C"
                    case 67...69:
                        score = "D+"
                    case 60...66:
                        score = "D"
                    case 0...59:
                        score = "F"
                    default:
                        score = "0~100 사이로 입력해주세요!"
                    }
                } else {
                    score = "이런놈들 꼭 있더라"
                }
                
            } label: {
                Text("계산하기")
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
