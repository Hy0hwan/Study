import UIKit


class Figure {
    var name: String = "UnKnown"
    
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("Draw \(name)")
    }
}


class Circle: Figure {
    var radius: Double = 0.0
    
}

let c = Circle(name: "Circle")


//// final class -> 상속 금지
//final class Rectangle: Figure {
//    var width: Double = 0.0
//    var height: Double = 0.0
//}
//
//class Sqare: Rectangle {
//    
//}
//
class Rectangle: Figure {
    var width: Double = 0.0
    var height: Double = 0.0
}

// Designated Initializer
// : 메인 생성자 -> 모든 저장속성 초기화 한다

// Convenience Initializer
// 보조 생성자. 일부만 초기화 & 메인 호출




