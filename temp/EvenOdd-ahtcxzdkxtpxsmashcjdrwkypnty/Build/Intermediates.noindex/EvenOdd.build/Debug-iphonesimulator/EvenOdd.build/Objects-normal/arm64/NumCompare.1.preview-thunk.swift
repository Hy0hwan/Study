import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/EvenOdd/EvenOdd/NumCompare.swift", line: 1)
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
                TextField(__designTimeString("#50247_0", fallback: ""), text: $lhs)
                    .frame(width: __designTimeInteger("#50247_1", fallback: 100), height: __designTimeInteger("#50247_2", fallback: 100))
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .background(.yellow)
                
                Text(op)
                    .font(.largeTitle)
                
                TextField(__designTimeString("#50247_3", fallback: ""), text: $rhs)
                    .frame(width: __designTimeInteger("#50247_4", fallback: 100), height: __designTimeInteger("#50247_5", fallback: 100))
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .background(.yellow)
            }
            
            Button {
                
                let lhsN = Int(lhs)!
                let rhsN = Int(rhs)!
                
                if lhsN == rhsN {
                    op = __designTimeString("#50247_6", fallback: "==")
                } else if lhsN < rhsN {
                    op = __designTimeString("#50247_7", fallback: "<")
                } else if lhsN > rhsN {
                    op = __designTimeString("#50247_8", fallback: ">")
                }
                
            } label: {
                Text(__designTimeString("#50247_9", fallback: "확인"))
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    NumCompare()
}
