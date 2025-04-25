//: [Previous](@previous)

import Foundation


// 목적
// 1. 클래스 계층에 포함된 모든 클래스의 정상적인 초기화 == 모든 저장속성을 초기화
// 2. 생성자 코드의 중복 제거

// 구조체(값 형식)

struct Size {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    init(value: Double) {
        
        self.init(width: value, height: value)
    }
}


// 클래스

// #1
// designated initializer는 반드시 가장 인접한 슈퍼클래스의 designated initializer를 호출해야 한다.

// Delegate Up : 상위 클래스 생성자 호출
// Delegate Across : 같은 클래스 생성자 호출


// #2
// A convenience initializer must call another initializer from the same class.
// convenience initializer는 반드시 같은 클래스에 있는 다른 생성자를 호출해야 한다.


// #3
// A convenience initializer must ultimately call a designated initializer.
// convenience initializer는 반드시 최종적으로 designated initializer 호출해야 한다.


class Figure {
   let name: String
   
   init(name: String) {
      self.name = name
   }
   
   convenience init() {
      self.init(name: "unknown")
   }
}


class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
   
   init(n: String, w: Double, h: Double) {
      width = w
      height = h
      super.init(name: n)
   }
   
   convenience init(value: Double) {
      self.init(n: "rect", w: value, h: value)
   }
}


class Square: Rectangle {
   convenience init(value: Double) {
      self.init(n: "square", w: value, h: value) // 상속받은 거호출
   }
   
   convenience init() {
      self.init(value: 0.0)
   }
}
