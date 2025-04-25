//
//  NumCompare.swift
//  EvenOdd
//
//  Created by KxCoding on 4/17/25.
//

import SwiftUI

struct NumCompare: View {
    @State var lhs: String = "0" // left hand side
    @State var rhs: String = "0"
    @State var op: String = "??"

    var body: some View {
        VStack { // Vertical Stack
            HStack { // Horizontal Stack
				TextField("", text: $lhs)
                    .frame(width: 100, height: 100)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .background(.yellow)

				Text(op)
                    .font(.largeTitle)

                TextField("", text: $rhs)
                    .frame(width: 100, height: 100)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .background(.yellow)
            }

            Button {
                // 입력 받은 두 수를 가져와서
                // 크기를 비교하고
                // 결과를 Text에 표시: <, >, ==
				let a = Int(lhs)!
                let b = Int(rhs)!

                if a > b {
					op = ">"
                } else if a < b {
                    op = "<"
                } else {
                    op = "=="
                }

            } label: {
                Text("확인")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    NumCompare()
}
