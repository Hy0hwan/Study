//: [Previous](@previous)

import Foundation

// Set

let set: Set<Int> = [1, 2, 2, 3, 3, 3, 4, 5, 5]

set.count
set.isEmpty

// membership test
// 요소가 포함되지 있는지 확인
set.contains(1) // 1

let arr = [1, 2, 3]
arr.contains(1) // 2


var words = Set<String>()
let aa = words.insert("Swift")
words.insert("Swift")


words.remove("Swift")
words.remove("iOS")


// 로또 번호 생성 함수 O
// 유니크한 숫자 6 : Set
// 범위 1 ~ 45
// 배열로 리턴 O
// 함수를 구현 O
func generateNumbers() -> [Int] {
    var numbers: Set<Int> = []

    while numbers.count <= 6 {
        let rnd = Int.random(in: 1...45)
        numbers.insert(rnd)
    }

    return numbers.sorted()
}

generateNumbers()

func makeLotto() -> [Int] {
    Array(1...45).shuffled().prefix(6).sorted()
}

makeLotto()




