import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/day2/MyFirstCalc/MyFirstCalc/ContentView.swift", line: 1)
import SwiftUI

enum Operator: String {
    case plus = "+"
    case minus = "-"
    case multiply = "*"
    case divide = "/"
}

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
                    showOperatorList = __designTimeBoolean("#8592_0", fallback: true)
                } label: {
                    Text(op)
                        .padding()
                }
                .confirmationDialog(__designTimeString("#8592_1", fallback: ""), isPresented: $showOperatorList){
                    Button{
                        op = __designTimeString("#8592_2", fallback: "+")
                    } label: {
                        Text(__designTimeString("#8592_3", fallback: "+"))
                    }
                    
                    Button{
                        op = __designTimeString("#8592_4", fallback: "-")
                    } label: {
                        Text(__designTimeString("#8592_5", fallback: "-"))
                    }
                    
                    Button{
                        op = __designTimeString("#8592_6", fallback: "*")
                    } label: {
                        Text(__designTimeString("#8592_7", fallback: "*"))
                    }
                    
                    Button{
                        op = __designTimeString("#8592_8", fallback: "/")
                    } label: {
                        Text(__designTimeString("#8592_9", fallback: "/"))
                    }
                }

                VStack {
                    TextField(__designTimeString("#8592_10", fallback: ""), text: $lhs)
                        .textFieldStyle(.roundedBorder)

                    TextField(__designTimeString("#8592_11", fallback: ""), text: $rhs)
                        .textFieldStyle(.roundedBorder)
                }
                .multilineTextAlignment(.trailing)
            }

            Divider()

            Text(result)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .trailing)

            Button {
                                
                calculate()

            } label: {
                Text(__designTimeString("#8592_12", fallback: "계산"))
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)


            Spacer()
        }
        .padding()
    }
    
    // Methods
    func calculate() {
        let a = Int(lhs)!
        let b = Int(rhs)!
        
        if op == __designTimeString("#8592_13", fallback: "+") {
            result = "\(a + b)"
        }else if op == __designTimeString("#8592_14", fallback: "-") {
            result = "\(a - b)"
        }else if op == __designTimeString("#8592_15", fallback: "*") {
            result = "\(a * b)"
        }else if op == __designTimeString("#8592_16", fallback: "/") {
            result = "\(a / b)"
        } else {
            result = __designTimeString("#8592_17", fallback: "연산자 선택")
        }
    }
}

#Preview {
    ContentView()
}
