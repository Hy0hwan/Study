//
//  ContentView.swift
//  EvenOdd
//
//  Created by 김효환 on 4/17/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var value: String = "0"
    @State var result: String = "-"
    
    var body: some View {
        VStack {
            TextField("", text: $value)
                .textFieldStyle(.roundedBorder)
            
            Text(result)
                .font(.largeTitle)
            
            Button {
                // 입력한 값을 가지고 와서
                // 짝수면 result에 짝수 저장
                // 홀수면 result에 홀수 저장
                
                // if Int(value)! % 2 == 0 {
                // result = "짝수"
                // } else {
                // result = "홀수"
                // }
                
                let num = Int(value)!
                
                if num.isMultiple(of: 2){
                    result = "짝수"
                } else {
                    result = "홀수"
                }
                

                
            } label: {
                Text("확인")
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
