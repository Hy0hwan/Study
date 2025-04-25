//: [Previous](@previous)

import Foundation

// 구조체 > 생성자 기본 제공
// 클래스 > X

// Class
class Person {
    // 속성, Property
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func speak() {
        print( "Hello")
    }
}

// 인스턴스를 만들때는 생성자(Initializer)를 호출한다.
let p = Person(name: "KxCoding", age: 3)

// 속성 + 메소드 = 멤버
// 멤버에 접근할 때는 인스턴스 이름으로 접근한다.!
p.name
p.age

p.speak()
