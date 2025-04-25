import UIKit

// Short-circuit Evaluation
// 단락 평가

false && true
false || true
true || true

// Side Effect
// 부수효과

var a = 1
a = 2
//print(a)

func taskA() -> Bool {
    print("task A") // Side effect
    return false
}

func taskB() -> Bool {
    print("task B") // Side effect
    return true
}

let resultA = taskA()
let resultB = taskB()

if resultA || resultB {
    print("done")
} else {
    print("fail")
}

// 논리 연산에서는 오른쪽 피연산자에 사이드 이펙트가 발생해야 하는 코드를 쓰지 말자!
