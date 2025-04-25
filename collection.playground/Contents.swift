import UIKit


let nums = [1, 2, 3]

let emptyArray: [Int] = []
let emptyArray2 = [Int]()
let emptyArray3 = Array<Int>()


let zeroArray = [Int](repeating: 0, count: 10)

nums.count

nums.isEmpty

let fruits = ["Apple", "Banana", "Melon"]

fruits[0]

fruits[fruits.startIndex]
fruits.first
fruits.last


let list = ["A", "B", "C", "D", "E"]

list[0...2]
list[2...]

var alphabet = ["A", "B", "C"]

alphabet.append("E")
alphabet.append(contentsOf: ["F", "G"])

alphabet.insert( "D", at: 3)


alphabet.removeAll(where: { (elem: String) -> Bool in
    return elem != "B"
})


alphabet.removeAll { $0 != "B" }


let a = ["A", "B", "C"]
let b = ["a", "b", "c"]
let c = ["A", "C", "B"]

// 대소문자 무시하고 비교 + 문법 최적화

a.elementsEqual(b, by: { (lhs: String, rhs : String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedSame
})


a.elementsEqual(b) {
    $0.caseInsensitiveCompare($1) == .orderedSame
}


let randomNumbers = [1, 2, 4, 6, 0, 9, 3, 5]


randomNumbers.first{ $0.isMultiple(of: 2) }


let evenNumbers = [2, 4, 6, 8, 10]

evenNumbers.map({ (num: Int) -> Int in
    num * 2
})

evenNumbers.map{ $0 * 2 }

let optionalNums = [1, 2, 3, nil, 4, 5, 6, 7, nil]


// compactMap -> nil 필터링
let result = optionalNums.compactMap { $0 }

evenNumbers.reduce(0) { $0 + $1 }

let words = ["Hello", "Swift", "Programing"]

words.reduce("") {
   " \($0) \($1)"
}.trimmingCharacters(in: .whitespaces)


let tags =
"""
OOTD
Swift
iOS
"""

"#" + tags.components(separatedBy: "\n").joined(separator: " #")

//tags.components(separatedBy: "\n").map { "#($0) " }.joined()

tags
    .components(separatedBy: "\n")
    .map{ "#\($0)" }
    .joined(separator: " ")


// 딕셔너리에서는 키를 통해서 값에 접근한다.
// 값을 통해서 키에 접근할 수 없다.
// 키는 유니크 해야 한다.
// 값은 중복 가능하다.







