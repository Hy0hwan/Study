//: [Previous](@previous)

import Foundation

class Figure {
    let name: String

    init(name: String) {
        self.name = name
    }

    func draw() {
        print("draw \(name)")
    }
}

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0

    override func draw() {
        super.draw()
        print("⬛️ \(width) x \(height)")
    }
}

class Square: Rectangle {

}

let f = Figure(name: "UnKnown")

f.name
f.draw()


let r = Rectangle(name: "Rect")
r.width
r.height
r.name
r.draw()


//let s = Square(name: "Square")

// upcasting
// 서브 클래스의 인스턴스를 상속 계층에서 슈퍼 클래스의 타입으로 저장하는 것
// 안전 && 자동

let upcastedS: Figure = Square(name: "Square")
upcastedS.name


// Downcasting
// 안전 X, 수동
// 업캐스팅된 인스턴스를 실제타입 또는 상속 계층에서 아래쪽에 있는 다른 타입으로 캐스팅 하는 것

let downcasedS = upcastedS as! Square

