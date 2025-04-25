import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/EvenOdd/EvenOdd/ContentView.swift", line: 1)
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
            TextField(__designTimeString("#42266_0", fallback: ""), text: $value)
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
                
                if num.isMultiple(of: __designTimeInteger("#42266_1", fallback: 2)){
                    result = __designTimeString("#42266_2", fallback: "짝수")
                } else {
                    result = __designTimeString("#42266_3", fallback: "홀수")
                }
                

                
            } label: {
                Text(__designTimeString("#42266_4", fallback: "확인"))
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
