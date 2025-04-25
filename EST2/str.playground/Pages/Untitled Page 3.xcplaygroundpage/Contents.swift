//: [Previous](@previous)

import Foundation

// Appending
var str = "Hello"

str.append(", ")
str

let s = str.appending("Swift")

s
str

// ed, ing 새로운 값을 리턴

//s.append("!")

"File Size: ".appendingFormat("%.1f", 12.3456)

// Insert

str = "Hello Swift"
str.insert(",", at: str.index(str.startIndex, offsetBy: 5))

if let sIndex = str.firstIndex(of: "S") {
    str.insert(contentsOf: "Awesome ", at: sIndex)
}

// Replacing

str = "Hello, Objective-C"

// Objective-C -> Swift
if let range = str.range(of: "Objective-C") {
    str.replaceSubrange(range, with: "Swift")
}

// Hello -> Hi

if let range = str.range(of: "Hello") {
    let s = str.replacingCharacters(in: range, with: "Hi")

    s
    str
}

// Swift -> Awesome Swift
var result = str.replacingOccurrences(of: "Swift", with: "Awesome Swift")

result = str.replacingOccurrences(of: "swift", with: "Awesome Swift", options: [.caseInsensitive])

"apple" == "Apple"
"apple".lowercased() == "Apple".lowercased()
"apple".caseInsensitiveCompare("Apple") == .orderedSame


// Removing

str = "Hello, Awesome Swift!!!"


let lastCharIndex = str.index(before: str.endIndex)
let removed = str.remove(at: lastCharIndex)
str

str.removeFirst()
str

str.removeLast()
str

//str = ""
if !str.isEmpty {
    str.removeFirst()
    str
}

if let range = str.range(of: "Awesome") {
    str.removeSubrange(range)
}
str

str = "" /// 10000자
str.removeAll(keepingCapacity: false)
str.removeAll(keepingCapacity: true)

// count : 값의 길이. 문자열의 길이, 문자열에 포함된 문자의 수
// capacity : 메모리 크기
// count <= capacity

str = "Hello, Awesome Swift!!!"

var substr = str.dropLast()
str

str.dropLast(3)
str.dropFirst()
str.dropFirst(3)

// ---------------------------
