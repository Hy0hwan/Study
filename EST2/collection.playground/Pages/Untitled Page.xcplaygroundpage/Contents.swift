import UIKit

let numArr: [Int] = [1, 2, 3] // 1차원
let numArr2: Array<Int>

[[1, 2, 3], [4, 5, 6], [7, 8, 9]]

let nums = [1, 2, 3]
let emptyArray: [Int] = []
let emptyArray2 = [Int]()
let emptyArray3 = Array<Int>()

let zeroArray = [Int](repeating: 0, count: 10)

nums.count
nums.isEmpty

let fruits = ["Apple", "Banana", "Melon"]
fruits[0]
fruits[2]
//fruits[3]

fruits[fruits.startIndex]

fruits.first
fruits.last
// 왜 안전?

// ---

// 추출
let list = ["A", "B", "C", "D", "E"]
list[0...2]
list[2...]

list.prefix(3)
list.prefix(upTo: 3)

list.suffix(3)

// 추가
var alphabet = ["A", "B", "C"]
alphabet.append("E")
alphabet.append(contentsOf: ["F", "G"])

alphabet.insert("D", at: 3)

alphabet.remove(at: 0)

alphabet.removeAll(where: { (elem: String) -> Bool in
	return elem != "B"
})

alphabet.removeAll(where: {
    return $0 != "B" // shorthand argument name
})

alphabet.removeAll(where: {
    $0 != "B" // implicit return
})

alphabet.removeAll {
    $0 != "B"
}

// 비교
"apple" == "Apple"

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]
let c = ["A", "C", "B"]

a == b
a != b
a == c

a.elementsEqual(b)

// 대소문자 무시하고 비교 + 문법 최적화
a.elementsEqual(b, by: { (lhs: String, rhs: String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedSame
})

a.elementsEqual(b, by: {
    return $0.caseInsensitiveCompare($1) == .orderedSame
})

a.elementsEqual(b, by: {
    $0.caseInsensitiveCompare($1) == .orderedSame
})

a.elementsEqual(b) {
    $0.caseInsensitiveCompare($1) == .orderedSame
}

let randomNumbers = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

randomNumbers.min()
//randomNumbers.min(by: <#T##(Int, Int) throws -> Bool#>)

randomNumbers.max()
//randomNumbers.max(by: <#T##(Int, Int) throws -> Bool#>)

// 첫 번째 짝수 + 문법 최적화
randomNumbers.first(where: { (num: Int) -> Bool in
    return num.isMultiple(of: 2)
})

randomNumbers.first {
    $0.isMultiple(of: 2)
}

randomNumbers.first

Array(randomNumbers.sorted().reversed())
//randomNumbers.sort()

var mutalbeRandomNumbers = randomNumbers
mutalbeRandomNumbers.swapAt(0, 1)

randomNumbers.shuffled()
randomNumbers.randomElement()


// 함수(클로저)를 파라미터로 받거나, 함수(클로저)를 리턴하는 함수
// 고차 함수, higher-order function
// 1차 함수

// 3대장
// map mapping:

let evenNumbers = [2, 4, 6, 8, 10]
evenNumbers.map({ (num: Int) -> Int in
	return num * 2
})

evenNumbers.map { $0 * 2 }


// NumberFormatter

evenNumbers.map {
    let formatter = NumberFormatter()
    formatter.locale = Locale(identifier: "ko_kr")
    formatter.numberStyle = .spellOut

    return formatter.string(for: $0)!
}

// compactMap
let optionalNums = [1, 2, 3, nil, 4, 5, 6, 7, nil]

let result = optionalNums.compactMap { $0 }
result
// nil 필터링

// reduce
// 줄이다, 감소하다, 압축하다
// 컬렉션에 포함된 요소를 대상으로 어떤 작업을 하고나서, 결과를 누적하고, 하나의 결과로 압축

evenNumbers.reduce(0) { $0 + $1 }

let words = ["Hello", "Swift", "Programming"]

words.reduce("") {
    "\($0) \($1)"
}.trimmingCharacters(in: .whitespaces)


// split / joined

let r = evenNumbers.split(separator: 6)
print(r)

let multiline = """
Hello, Swift
Hello, iOS
Goodbye, Objective-C
"""

let lines = multiline.split(separator: "\n")
let lines2 = multiline.components(separatedBy: "\n")

lines2.joined()
lines2.joined(separator: ", ")

let tags = """
OOTD
Swift
iOS
"""

"#" + tags.components(separatedBy: "\n").joined(separator: " #")

// #OODT #Swift #iOS
tags
    .components(separatedBy: "\n")
    .map { "#\($0)" }
    .joined(separator: " ")

