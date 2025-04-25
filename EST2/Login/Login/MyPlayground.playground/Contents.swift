import UIKit

// 논리연산자

// Logical AND
true && true
true && false
false && true
false && false

// Logical OR
true || true
true || false
false || true
false || false
false || false

// Logical NOT, 논리 부정
!true
!false


let id = "kxcoding"

// 길이 검증
id.count

if id.count > 0 {

}

if !id.isEmpty {

}

if id.isEmpty == false {

}

if id.count >= 5 && id.count <= 20 {

}

if (5 ... 20).contains(id.count) {
    
}
