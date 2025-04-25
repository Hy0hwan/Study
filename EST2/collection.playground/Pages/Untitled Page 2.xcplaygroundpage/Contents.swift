//: [Previous](@previous)

import Foundation

// Dictionary
var dict = ["A": "Apple", "B": "Banana"]

dict.first

dict = [:]
var dict2: Dictionary<String, String> // [String: String]
var emptyDict = [String: Int]()

var words = ["A": "Apple", "B": "Banana", "C": "City"]
words.count
words.isEmpty

// 딕셔너리에서는 키를 통해서 값에 접근한다.
// 값을 통해서 키에 접근할 수 없다!
// 키는 유니크 해야 한다.
// 값은 중복 가능하다.

words["A"]
words["Z"]
words["Z", default: "missing"]

for key in words.keys {
    print(key)
}

for key in words.keys {
    print(key)
}

for key in words.keys.sorted() {
    print(key)
}
words.values


var mutableDict = [String: String]()

mutableDict["A"] = "Apple"
mutableDict["A"] = "Application"

// Update + Insert = Upsert
// 있으면 업데이트, 없으면 인설트

mutableDict.updateValue("Banana", forKey: "B")
mutableDict.updateValue("Ball", forKey: "B")
mutableDict.count

mutableDict.removeValue(forKey: "B")
mutableDict.count

mutableDict["A"] = nil
mutableDict["Z"] = nil

// 딕셔너리 정렬 X
// 비교
// 검색


