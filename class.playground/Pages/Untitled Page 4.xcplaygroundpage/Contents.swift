//: [Previous](@previous)

import Foundation

// Overriding, 오버라이딩, 재정의
// 상속받은 멤버를 현재 클래스에 맞게 수정

class Figure {
    var name = "Unknown"

    init(name: String) {
        self.name = name
    }

    func draw() {
        print("draw \(name)")
    }
}

class Circle: Figure {
    var radius = 0.0
    
    
    override func draw() {
        print("draw 🆘")
    }

}

let c = Circle(name: "Circle")
c.draw()
