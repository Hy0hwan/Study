//: [Previous](@previous)

import Foundation

var num = 1
var sum = 0

while num <= 100 { // 평가 후 실행
    sum += num
    num += 1
}
sum

num = 1
sum = 0

repeat { // 실행 후 평가
    sum += num
    num += 1
} while num <= 100
sum
