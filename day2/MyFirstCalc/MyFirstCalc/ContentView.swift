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
    @State var op: Operator? = nil
    @State var result: String = "-"
    
    @State var showOperatorList = false

    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                Button {
                    showOperatorList = true
                } label: {
                    Text(op?.rawValue ?? "")
                        .padding()
                }
                .confirmationDialog("", isPresented: $showOperatorList){
                    Button{
                        op = .plus
                    } label: {
                        Text(Operator.plus.rawValue)
                    }
                    
                    Button{
                        op = .minus
                    } label: {
                        Text(Operator.minus.rawValue)
                    }
                    
                    Button{
                        op = .multiply
                    } label: {
                        Text(Operator.multiply.rawValue)
                    }
                    
                    Button{
                        op = .divide
                    } label: {
                        Text(Operator.divide.rawValue)
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
                                
                calculate()

            } label: {
                Text("계산")
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
        
//        guard let op else {
//            showAlert2 = true
//            return
//        }
        
        switch op {
        case .plus:
            result = "\(a + b)"
        case .minus:
            result = "\(a - b)"
        case .multiply:
            result = "\(a * b)"
        case .divide:
            result = "\(a / b)"
        default:
            result = "연산자 선택"
        }

    }
}

#Preview {
    ContentView()
}
