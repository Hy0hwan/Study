//: [Previous](@previous)

import Foundation

// Compare
let bigA = "Apple"
let smallA = "apple"
let b = "Banana"

bigA == smallA
bigA.caseInsensitiveCompare(smallA) == .orderedSame
bigA.compare(smallA, options: [.caseInsensitive]) == .orderedSame

bigA < smallA
("A" as Character).asciiValue
("a" as Character).asciiValue

// Search

let str = "Hello, Swift"

str.contains("Swift")
str.contains("swift")
str.lowercased().contains("swift".lowercased())

str.range(of: "swift", options: [.caseInsensitive])

// -----------------------------------
