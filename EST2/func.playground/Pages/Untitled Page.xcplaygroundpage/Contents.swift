import UIKit

//func sayHello() {
//	print("Hello")
//}
//
//sayHello()

func getSomething() -> Int {
    return 0
}

getSomething()

// 파라미터_이름: 타입

func add(a: Int, b: Int) -> Int {
	return a + b
}

add(a: 12, b: 34)

// 두 개의 정수를 파라미터로 받고
// 하나의 연산자를 파라미터로 받아서
// 계산 결과를 정수로 리턴
// 지원하는 연산은 사칙연산으로 제한
// 함수 하나로!

// 파라미터

// Formal Parameter
// Actual Parameter // Argument
// Argument Labels

func calc(a: Int, b: Int, op: String) -> Int {
    switch op {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        return a / b
    default:
        print("넌 뭐야?")
        return 0
    }
}

//calc(num: 12, with: 34, op: "+")
// Swift에서는 함수를 호출할 때 argument label을 써야 한다.
//calc(1, 234, "op")

func sayHello(to name: String = "Strange") {
	print("Hello, \(name)")
}

sayHello(to: "Tim")
sayHello()

// 문자열을 파라미터로 받아서
// 문자열의 길이를 리턴하는 함수

// for, in, on, with, by
func count(for str: String) -> Int {
    return str.count
}

count(for: "Swift")

for num in 1...10 {
    print(num)
}

// Variadic Parameter
// 가변 파라미터
// Any: 범용 타입, 어떤 타입도 받을 수 있음. 쓰지 말자!!!
// 여러 값을 한 번에 받는다
// 함수 바디로 배열 형태로 전달된다!

func sum(of nums: Int...) -> Int {
	var sum = 0
    for num in nums {
        sum += num
    }

    return sum
}

sum(of: 1, 2, 3)
sum(of: 1, 2, 3, 4, 5)

// 정수 두 개 이상을 받아서
// 최소, 최대, 평균을 각각 출력하는 함수
// 출력 방식은 자유

func printMinMaxAvg(of nums: Int...) {
    guard nums.count > 1 else {
        print("두 개 이상을 입력하세요")
        return
    }

    let min = nums.min() ?? 0
    let max = nums.max() ?? 0
    let avg = Double(nums.reduce(0, +)) / Double(nums.count)

    print(min, max, avg)
}

printMinMaxAvg(of: 1, 2, 3, 4, 5)


