import UIKit

// Short-circuit Evaluation
// 단락 평가

false && true
false || true
true && true





func taskA() -> Bool {
    print("task A")
    return true
}

func taskB() -> Bool {
    print("task B")
    return true
}

let resultA = taskA()
let resultB = taskB()


if resultA() || resultB {
    print("done")
    
} else {
    print("fail")
}

// 논리 연산에서는 오른쪽 피연산자에 사이드 이펙트가 발생해야 하는 코드를 쓰지 말자!
