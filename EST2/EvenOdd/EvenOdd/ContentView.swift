//
//  ContentView.swift
//  EvenOdd
//
//  Created by KxCoding on 4/17/25.
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
                let num = Int(value)!

                if num.isMultiple(of: 2) {
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
