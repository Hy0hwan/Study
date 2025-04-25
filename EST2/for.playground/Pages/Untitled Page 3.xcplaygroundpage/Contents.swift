//: [Previous](@previous)

import Foundation

// control transfer statement
// 제어 전달 구문

// "제어를 전달한다"
// 현재 실행중인 스코프를 중단하고, 다음에 실행할 코드를 이어서 실행한다.

for index in 1 ... 100 {
    print("start", index)

    if index < 5 {
        // 회차, 반복, 순서
        continue // 현재 OO을 중지하고 다음 OO으로 OO를 전달
    }

    if index > 10 {
        // 문장
        break // 현재 OO을 중지하고 다음 OO으로 OO를 전달
    }

    print("end", index)
}

// return, throw

print("after for")

// 로그인 실패: 9번까지는 경고 출력
// 10 번째부터는 계정 잠금. 안내 메일 보내기
// 11번째 부터는 안내메일만 보내기

let attempts = 10

switch attempts {
case ...9:
    print("경고")
case 10:
    print("계정 잠금")
    fallthrough
default:
    print("안내 메일 보내기")
}

