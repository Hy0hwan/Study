//: [Previous](@previous)

import Foundation

// 열거형
// Enumeration
// Enum

// 연관된 (고정된 count의) 상수를 하나의 이름으로 묶은 타입
// 가독성, 안정성

// 워드 프로세서 > 문단 정렬 방식
// 왼쪽, 오른쪽, 가운데


enum Alignment {
    case left // 중복된 단어는 지운다
    case center
    case right
}

var alignment = Alignment.center


enum CompassDirection {
    case east, west, south, north
}

//1
//CompassDirection.east


enum StatusCode: Int {
    case ok = 200
    case notFound = 404
    case internalError = 500
}
