import UIKit

// 저장 속성
// stored property



class Person {
    var name: String
    var yearOfBirth: Int // Stored Property // 공간 O
    
    var age: Int {
        let calender = Calendar.current
        let now = Date()
        let year = calender.component(.year , from: now)
        
        return year - yearOfBirth
        
    }
    
    init(name: String, yearOfBirth: Int) {
        self.name = name
        self.yearOfBirth = yearOfBirth
    }
}

let steve = Person(name: "Steve", yearOfBirth: 1955)
steve.age


let me = Person(name: "KHH", yearOfBirth: 1996)
me.age

class Math {
    static let pi = 3.14
}

Math.pi

enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    
    static var today: Weekday {
        let calender = Calendar.current
        let today = Date()
        let weekday = calender.component(.weekday, from: today)
        
        return Weekday(rawValue: weekday)!
    }
    
}

Weekday.today


class Sample {
    var data = 0
    
    func doSomething() {
        
        print(data)
    }
    
    func call() {
        
    }
}

let s = Sample()
s.data
s.doSomething()
s.call()


struct Size {
    var width = 0.0
    var height = 0.0
    
    mutating func reset() {
        width = 0.0
        height = 0.0
    }
}

var size = Size() // 속성을 바꾸고 싶다면 인스턴스를 변수에 저장해야 한다!
size.width
size.reset()


class Circle {
    
    static let pi = 3.14
    var radius = 0.0
    
    func getArea() -> Double {
        return radius * radius * Circle.pi
    }
    
    static func printPi() {
        print(pi)
        print(Self.pi)
        print(Circle.pi)
    }
}

