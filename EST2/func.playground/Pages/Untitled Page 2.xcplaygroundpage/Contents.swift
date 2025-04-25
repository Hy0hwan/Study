//: [Previous](@previous)

import Foundation

func sayHello() {
    print("Hello, Swift")
}

let f1 = sayHello
f1()

// -----------
func printHello(from name: String) {
    print("Hello \(name)")
}

func printHello2(from name: String) {
    print("Hello \(name)")
}

let f2: (String) -> () = printHello(from:)
var f3 = printHello(from:)
f3 = printHello2(from:)

f3("Swift") // 왜?
printHello(from: "Swift")

// -------


func add(a: Int, b: Int) -> Int {
    return a + b
}
// add(a:b:)

func add(_ a: Int, with b: Int) -> Int {
    return a + b
}
// add(_:with:)

var f4: (Int, Int) -> Int = add(a:b:)
f4(1, 2)

f4 = add(_:with:)
f4(1, 2)

// Argument Label이 달라도 Function Type이 같으면 같은 변수/상수에 저장할 수 있다.


// Swift에서 모든 함수는 Closure다
// 함수 > 이름을 가진 Closure > named closure
// 익명 함수 > 이름이 없는 closure > unnamed clsoure

let c = { print("Hello") }
//c()

let c2 = { (str: String) -> String in
	return "Hello, \(str)"
}
// c2("Swift")

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "Mac Studio", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone 16", "iPhone 16 Pro Max", "iPhone 14", "iPhone SE",
   "AirPods",
   "Apple Watch Series 10", "Apple Watch Ultra 2"
]

let results = products.filter({ (name: String) -> Bool in
    return name.contains("Pro")
})

print(results)
print(results.sorted())


// 문법 최적화
products.filter({ (name: String) -> Bool in
    return name.contains("Pro")
})

products.filter({
    return $0.contains("Pro") // Shorthand argument name
})

products.filter({
    $0.contains("Pro") // implicit return
})

products.filter() { // Trailing Closure, 후행 클로저
    $0.contains("Pro")
}

products.filter { // Trailing Closure, 후행 클로저
    $0.contains("Pro")
}

products.filter { $0.contains("Pro") }



let sorted = results.sorted(by: { (lhs: String, rhs: String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})
print(sorted)

// 한글 정렬

results.sorted(by: {
    return $0.caseInsensitiveCompare($1) == .orderedAscending
})

results.sorted(by: {
    $0.caseInsensitiveCompare($1) == .orderedAscending
})

results.sorted {
    $0.caseInsensitiveCompare($1) == .orderedAscending
}

products.contains(where: { (name: String) -> Bool in
    return name.contains("Pro")
})

products.contains(where: {
    return $0.contains("Pro")
})

products.contains(where: {
    $0.contains("Pro")
})

products.contains {
    $0.contains("Pro")
}

products.contains { $0.contains("Pro") }


// Trailing Closure

func single(first: () -> ()) {

}


func multi(first: () -> (), second: () -> (), third: () -> ()) {

}

multi {
    <#code#>
} second: {
    <#code#>
} third: {
    <#code#>
}


func multi2(_ first: () -> (), second: () -> (), third: () -> ()) {

}

multi2 {
    <#code#>
} second: {
    <#code#>
} third: {
    <#code#>
}



func multi3(first: () -> (), _ second: () -> (), third: () -> ()) {

}

multi3 {
    <#code#>
} _: {
    <#code#>
} third: {
    <#code#>
}



func mixed(first: () -> (), second: Int, third: () -> ()) {

}

mixed(first: { // inline closure
    <#code#>
}, second: <#T##Int#>) {
    <#code#>
}

func mixed2(second: Int, first: () -> (), third: () -> ()) {

}

mixed2(second: 123) {

} third: {

}

