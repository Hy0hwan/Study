//
//  NumCompare.swift
//  EvenOdd
//
//  Created by 김효환 on 4/17/25.
//

import SwiftUI

struct NumCompare: View {
    
    @State var lhs: String = "3"
    @State var rhs: String = "1"
    @State var op: String = "??"
    
    var body: some View {
        VStack { //Vertical Stack
            HStack { //Horizontal Stack
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
                
                let lhsN = Int(lhs)!
                let rhsN = Int(rhs)!
                
                if lhsN == rhsN {
                    op = "=="
                } else if lhsN < rhsN {
                    op = "<"
                } else if lhsN > rhsN {
                    op = ">"
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
