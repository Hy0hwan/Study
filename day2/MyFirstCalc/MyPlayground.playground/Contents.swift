import UIKit



func calc (a: Int, b: Int, op: String) -> Int {
    switch op {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        return a / b
    default:
        print("넌 뭐야?")
        return 0
    }
}


calc(a: 1, b: 2, op: "+")


func sayHello(to name: String = "Strange") {
    print("Hello, \(name)")
}


sayHello()



// 문자열을 파라미터로 받아서
// 문자열의 길이를 리턴하는 함수
//func countSring(a: String) -> Int {
//    print(a.count)
//    return 0
//}
//
//countSring(a: "dsadsadsadasda")


for num in 1 ... 10 {
    print(num)
}


