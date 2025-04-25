import UIKit

// 타입 만드는 규칙(정답은 아님)
// 일단 구조체
// 참조 형식이 필요하면 클래스
// 고정된 경우의 수를 표현해야 한다면 열거형


// 구조체
// 사람의 이름과 나이
struct Person {
    // 속성, Property
    var name: String
    var age: Int

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

// Naming Convention
