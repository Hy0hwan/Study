//: [Previous](@previous)

import Foundation

// Character Set

let a = CharacterSet.uppercaseLetters

// 여집합???
let b = a.inverted


// Trimming
let str = " A p p l e "
let charSet = CharacterSet.whitespaces

let trimmed = str.trimmingCharacters(in: charSet)

// 모든 공백 제거하기
str.replacingOccurrences(of: " ", with: "")


// 편집
var editTarget = CharacterSet.uppercaseLetters
editTarget.insert("#")
editTarget.insert(charactersIn: "~!@")

editTarget.remove("#")
editTarget.remove(charactersIn: "~!@")

CharacterSet(charactersIn: "~!@")

// 문자열 분리
let customCharSet = CharacterSet(charactersIn: "@.")
let email = "example@email.com"

let components = email.components(separatedBy: customCharSet)

// 이메일 검증
func isValidEmail(_ email: String) -> Bool {
    let emailCharSet = CharacterSet.alphanumerics.union(CharacterSet(charactersIn: "@."))

    return email.rangeOfCharacter(from: emailCharSet.inverted) == nil
}

isValidEmail("example@email.com")
isValidEmail("example#email.com")

// 강력한 비밀번호 검증
// 길이 : 최소 8자 이상
// 대소문자 한글자 이상 포함
// 숫자 포함
// 특수문수 포함

func isValidPassword(_ password: String) -> Bool {
    guard password.count >= 8 else { return false }

    let hasUppercase = password.rangeOfCharacter(from: .uppercaseLetters) != nil
    let hasLowercase = password.rangeOfCharacter(from: .lowercaseLetters) != nil
    let hasDigit = password.rangeOfCharacter(from: .decimalDigits) != nil
    let hasPunctuation = password.rangeOfCharacter(from: .punctuationCharacters) != nil

    return hasUppercase && hasLowercase && hasDigit && hasPunctuation
}

let password1 = "Password123!" // true
let password2 = "pass123" // false

isValidPassword(password1)
isValidPassword(password2)
