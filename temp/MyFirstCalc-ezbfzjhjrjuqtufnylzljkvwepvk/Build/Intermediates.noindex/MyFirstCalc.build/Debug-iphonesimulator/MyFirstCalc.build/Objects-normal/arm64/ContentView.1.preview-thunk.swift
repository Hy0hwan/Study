import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/day2/MyFirstCalc/MyFirstCalc/ContentView.swift", line: 1)
//
//  ContentView.swift
//  MyFirstCalc
//
//  Created by 김효환 on 4/16/25.
//

//경고창 : Alert View

// UIKit : Action Sheet
// SwiftUI : Confirmation Dialong

import SwiftUI

struct ContentView: View {
    @State var lhs: String = "1"
    @State var rhs: String = "34"
    @State var op: String = "??"
    @State var result: String = "-"
    
    @State var showOperatorList = false

    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                Button {
                    showOperatorList = __designTimeBoolean("#5622_0", fallback: true)
                } label: {
                    Text(op)
                        .padding()
                }
                .confirmationDialog(__designTimeString("#5622_1", fallback: ""), isPresented: $showOperatorList){
                    Button{
                        op = __designTimeString("#5622_2", fallback: "+")
                    } label: {
                        Text(__designTimeString("#5622_3", fallback: "+"))
                    }
                    
                    Button{
                        op = __designTimeString("#5622_4", fallback: "-")
                    } label: {
                        Text(__designTimeString("#5622_5", fallback: "-"))
                    }
                    
                    Button{
                        op = __designTimeString("#5622_6", fallback: "*")
                    } label: {
                        Text(__designTimeString("#5622_7", fallback: "*"))
                    }
                    
                    Button{
                        op = __designTimeString("#5622_8", fallback: "/")
                    } label: {
                        Text(__designTimeString("#5622_9", fallback: "/"))
                    }
                }

                VStack {
                    TextField(__designTimeString("#5622_10", fallback: ""), text: $lhs)
                        .textFieldStyle(.roundedBorder)

                    TextField(__designTimeString("#5622_11", fallback: ""), text: $rhs)
                        .textFieldStyle(.roundedBorder)
                }
                .multilineTextAlignment(.trailing)
            }

            Divider()

            Text(result)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .trailing)

            Button {
                
                let a = Int(lhs)!
                let b = Int(rhs)!
                
                if op == __designTimeString("#5622_12", fallback: "+"){
                    result = "\(a + b)"
                }else if op == __designTimeString("#5622_13", fallback: "-"){
                    result = "\(a - b)"
                }else if op == __designTimeString("#5622_14", fallback: "*"){
                    result = "\(a * b)"
                }else if op == __designTimeString("#5622_15", fallback: "/"){
                    result = "\(a / b)"
                }

            } label: {
                Text(__designTimeString("#5622_16", fallback: "계산"))
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)


            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
