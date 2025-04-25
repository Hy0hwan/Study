import UIKit

// 합 구하기
var sum = 0
for num in 1 ... 100 {
    sum += num
    // sum = sum + num
}
sum

let power = 10
var result = 1
for _ in 1...power {
    result *= 2
}
result

// 구구단
for i in 2...9 {
    print("\n\(i)단 ------------------")
    for j in 1...9 {
        print("\(i) x \(j) = \(i * j)")
    }
}

// 단 구분 추가하기
// 단 출력 형태는 자유


// stride

for num in stride(from: 0, to: 10, by: 2) {
    print(num)
}

print("-----------------------")

for num in stride(from: 0, through: 10, by: 2) {
    print(num)
}


