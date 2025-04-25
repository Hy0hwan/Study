import UIKit



func sayHello() {
    print("Hello")
}


sayHello()


func getSometing() -> Int {
    
    return 0
}

getSometing()



// 파라미터_이름 : 타입
func add(a: Int, b: Int) -> Int {
    a + b // Implicit Return
}

add(a: 12, b: 3)


//func math(a: Int, b: Int) -> (Int, Int, Int, Int) {
//    (a + b, a - b, a * b, a / b)
//}
//
//math(a: 12, b: 3)

func math(a: Int, b: Int) -> (sum: Int, sub: Int, mul: Int, div: Int) {
    (a + b, a - b, a * b, a / b)
}


math(a: 12, b: 2)



