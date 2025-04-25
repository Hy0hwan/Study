//
//  ContentView.swift
//  MyFirstCalc
//
//  Created by KxCoding on 4/16/25.
//

import SwiftUI



struct ContentView: View {
    @State var lhs: String = "12"
    @State var rhs: String = "34"
    @State var op: String = "??"
    @State var result: String = "-"

    @State var showOperatorList = false

    @State var showAlert = false
    @State var showAlert2 = false

    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                Button {
                    showOperatorList = true
                } label: {
                    Text(op)
                        .padding()
                }
                .confirmationDialog("", isPresented: $showOperatorList) {
                    Button {
                        op = "+"
                    } label: {
                        Text("+")
                    }

                    Button {
                        op = "-"
                    } label: {
                        Text("-")
                    }

                    Button {
                        op = "*"
                    } label: {
                        Text("*")
                    }

                    Button {
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
                calculate() // SwiftUI에서는 버튼 액션 코드를 메소드로 빼자!
            } label: {
                Text("계산")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)


            Spacer()
        }
        .padding()
        .alert("알림", isPresented: $showAlert) {
            Button {

            } label: {
                Text("확인")
            }
        } message: {
            Text("값을 입력해 주세요")
        }
        .alert("알림", isPresented: $showAlert2) {
            Button {

            } label: {
                Text("확인")
            }
        } message: {
            Text("연산자를 선택해 주세요")
        }
    }

    func calculate() {
        guard let a = Int(lhs),
              let b = Int(rhs) else {
            showAlert = true
            return
        }


        if op == "+" {
            result = "\(a + b)"
        } else if op == "-" {
            result = "\(a - b)"
        } else if op == "*" {
            result = "\(a * b)"
        } else if op == "/" {
            result = "\(a / b)"
        } else {
            showAlert2 = true
        }
    }
}


#Preview {
    ContentView()
}
