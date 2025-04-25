//: [Previous](@previous)

import Foundation

// String API

var str = "Hello, Swift String"

var emptyStr = ""
emptyStr = String()

let a = String(true)
let b = String(12)
let c = String(12.34)
let d = String(str)

let hex = String(123, radix: 16)

let repeatStr = String(repeating: "🫰", count: 10)

let e = "\(a) \(b)"
let f = a + b
str += "!!!"

str.count
str.isEmpty

str == "Apple"
"apple" == "Apple"
// 문자열 비교에서는 대소문자를 비교한다!!!!

"apple" < "Apple"
// lexical order // 사전 순서 비교, 코드 비교

str.lowercased()
str.uppercased()
str.capitalized

// ed, ing로 끝나면 보통은 새로운 값을 리턴하고, 원본은 바꾸지 않는다.

// 문자열
str = "123456789"
str.randomElement()
str.shuffled()

let source = "abcdefghijklmlmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
String(source.shuffled().prefix(10))

// String Index
// 0

str = "Swift"
str[str.startIndex]

// Swift
// 문자 인덱스 != 정수 인덱스
// String.Index

let firstCh = str[str.startIndex]

//let lastCh = str[str.endIndex] // 마지막 다음 인덱스
let lastCh = str[str.index(before: str.endIndex)]

let secondCh = str[str.index(after: str.startIndex)]

let thirdCh = str[str.index(str.startIndex, offsetBy: 2)]

// Swift는 유니코드 문자를 처리할 때, 내부에 할당된 값이 아니라 사람이 인식하는 모양(문자) 단위로 처리한다!!!!
// Objective-C는 내부에 할당된 값을 기준으로 처리한다.

str = "Hello, Swift"

let cc = str[str.startIndex]
var first = str.prefix(1)

first.insert("!", at: first.endIndex)

let newStr = String(first)

let index = str.index(str.startIndex, offsetBy: 5)
str.prefix(upTo: index)
str.prefix(through: index)
str.prefix(while: { (ch: Character) -> Bool in
	return ch != "i"
})

str.suffix(3)
str.suffix(from: index)

// 접두어, 접미어 비교
str.hasPrefix("Hello")
str.hasPrefix("hello")
str.hasSuffix("Hello")


str.substring(to: str.index(str.startIndex, offsetBy: 2))

//let s = str[0..<2]

var s = str[str.startIndex ..< str.index(str.startIndex, offsetBy: 2)]
str[..<str.index(str.startIndex, offsetBy: 2)]
str[str.index(str.startIndex, offsetBy: 2)...]

// Substring == String.SubSequence

// Swift에서 값 형식에는 Copy-on-write 최적화가 적용된다!


