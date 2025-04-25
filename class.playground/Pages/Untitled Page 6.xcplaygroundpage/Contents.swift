//: [Previous](@previous)

import Foundation


let num = 123

num is Int
num is Double
num is String

// Type Casting
class Figure {
    let name: String

    init(name: String) {
        self.name = name
    }

    func draw() {
        print("draw \(name)")
    }
}

class Triangle: Figure {
    override func draw() {
        super.draw()
        print("🔺")
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

class Circle: Figure {
    var radius = 0.0

    override func draw() {
        super.draw()
        print("🔴")
    }
}


let t = Triangle(name: "Triangle")
//let t = Rectangle(name: "Rect")
