//: [Previous](@previous)

import Foundation

class Figure {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
}

// #1
// 서브 클래스의 모든 저장속성이 기본값으로 초기화 되어 있고,
// Designated Intializer를 직접 구현하지 않으면
// super class의 모든 Designated Intializer를 상속한다.

// #2
// 서브클래스에서 Designated Intializer를 상속받았거나 오버라이딩 했다면
// 모든 Convenience Initializer를 상속한다.


class Rectangle: Figure {
    var width: Double = 0.0
    var height: Double = 0.0
    
    init(width: Double, height: Double, name: String) {
        self.width = width
        self.height = height
        
        super.init(name: name)
    }
}

class StandaloneRectangle {
    var width: Double = 0.0
    var height: Double = 0.0
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}


