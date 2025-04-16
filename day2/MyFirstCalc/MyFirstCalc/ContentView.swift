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
                    showOperatorList = true
                } label: {
                    Text(op)
                        .padding()
                }
                .confirmationDialog("", isPresented: $showOperatorList){
                    Button{
                        op = "+"
                    } label: {
                        Text("+")
                    }
                    
                    Button{
                        op = "-"
                    } label: {
                        Text("-")
                    }
                    
                    Button{
                        op = "*"
                    } label: {
                        Text("*")
                    }
                    
                    Button{
                        op = "/"
                    } label: {
                        Text("/")
                    }
                }

                VStack {
                    TextField("", text: $lhs)
                        .textFieldStyle(.roundedBorder)

                    TextField("", text: $rhs)
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
                
                if op == "+"{
                    result = "\(a + b)"
                }else if op == "-"{
                    result = "\(a - b)"
                }else if op == "*"{
                    result = "\(a * b)"
                }else if op == "/"{
                    result = "\(a / b)"
                }

            } label: {
                Text("계산")
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
