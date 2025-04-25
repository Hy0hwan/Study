import UIKit

let weekday = Calendar.current.component(.weekday, from: .now)

// 월요일, 화요일
if weekday == 1 {
	print("일요일")
} else if weekday == 2 {
    print("월요일")
} else if weekday == 3 {
    print("화요일")
} else if weekday == 4 {
    print("수요일")
} else if weekday == 5 {
    print("목요일")
} else if weekday == 6 {
    print("금요일")
} else if weekday == 7 {
    print("토요일")
}

// 비교 연산자
// 동일성 비교, 크기 비교
let a = 12

a == 12
a != 12
!(a == 12)

a < 12 // 1   미만일 때 true
a <= 12 // 2 이하일 때 true


a > 12 // 초과
a >= 12 // 이상 

