import UIKit

// Non-Optional
var greeting: String = "Hello"

// Non-Optional Type
// 반드시 값을 가져야 한다!
print(greeting)


// Optional
// 반드시 값을 가질 필요는 없다!
var num: Int? = nil // Non-optional Int
print(num)

num = 123
print(num)

// nil을 저장한다 == 값을 저장하지 않는다. null

// 0 -> Int
// 1.23 -> Double
// "str" -> String
// true, false -> Bool

// 옵셔널 값은 포장되어 있다! Wrapping
// 값을 사용할려면 꺼내야 한다! Unwrraping

var fruit: String? = "🍉"

// Unwrapping
// Forced Unwrapping
print(fruit!) // ! Forced Unwrapping Operator, 강제 추출 연산자
// 프로토타이핑, 유닛테스트

if fruit != nil {
    print(fruit!)
}

// Optional Binding
Int("asdfa")

// ?? nil coalescing operator / 닐 병합 연산자

if let result = fruit {
	result
} else {
	"누가 먹음"
}

fruit ?? "누가 먹음"
