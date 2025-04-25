//: [Previous](@previous)

import Foundation


var greeting: String = "Hello"


// control transfer statement
// 제어 전달 구문

// "제어를 전달한다?!" -> 현재 실행중인 스코프를 중단하고, 다음에 실행할 코드를 이어서 실행한다.


//for index in 1 ... 100 {
//    print("start", index)
//    
//    if index < 5 {
//                 // 회차, 반복, 순서
//        continue // 현재 00을 중지하고 다음 00으로 제어를 전달
//    }
//    
//    if index > 10 {
//              // 문장
//        break // 현재 00을 중지하고 다음 00으로 제어를 전달
//    }
//    
//    print("end", index)
//    
//}
//
//
//let attempts = 10
//
//switch attempts {
//case ...9:
//    print("경고")
//case 10:
//    print("계정 잠금")
//    print("안내 메일 보내기")
//default:
//    print("안내 메일 보내기")
//}


// Variadic Parameter
// 가변 파라미터
// Any : 범용 타입, 어떤 타입도 받을 수 있음. 쓰지말자!!!
// 여러 값을 한 번에 받는다.
// 함수 바디로 배열 형태로 전달된다!

//func sum(of nums: Int...) -> Int {
//    var sum = 0
//    for num in nums {
//        sum += num
//    }
//    
//    return sum
//}
//
//
//sum(of: 1, 2, 3, 4)



// 정수 두 개 이상을 받아서
// 최소, 최대, 평균을 각각 출력하는 함수
// 출력 방식은 자유
//func avg(nums : Int... ) -> Int {
//    guard nums.count > 1 else {
//        print("두 개 이상을 입력하세요")
//        return
//    }
//    
//    let min = nums.min() ?? 0
//    let max = nums.max() ?? 0
//    let avg = Double(nums.reduce(0, +)) / Double(nums.count)
//    
//    print(min, max, avg)
//    
//
//}
