import UIKit

// 문자열
// Singleline String Literal
let a = "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

// Multiline String Literal
let b = """
Lorem ipsum dolor sit amet, 
 consectetur adipiscing elit, 
  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
"""

print(a)
print(b)


// Mutability, 가변성
// Swift에서 가변성은 누가 결정? let, var

let immutableString = "str"
//immutableString.appen("!")

var mutableString = "str"
mutableString.append("!")

// String Interpolation
var str = "12.34KB"

let size = 12.55
str = String(size) + "KB"

"\(size)KB"
// 장점: 심플, 타입 에러 방지, 가독성
// 단점: 포멧 지정X

// Formatter

// Format Specifier, 포멧 지정자
String(format: "%.5fKB", size)

String(format: "Hello, %@", "Swift") // 문자열 또는 객체
String(format: "%d", 12)
String(format: "%f", 12.34)
String(format: "%.3f", 12.34)
String(format: "%10.3f", 12.34)
String(format: "%010.3f", 12.34)

String(format: "[%d]", 123)
String(format: "[%10d]", 123)
String(format: "[%-10d]", 123)

String(format: "%d%%", 12)

// Escape Sequence, 탈출 문자

str = "Hello"

str = "\\"
print(str)

print("A\tB")
print("C\nD")

// "Hello", he said
str = "\"Hello\", he said"

"""
"Hello", he said
"""

// Raw String, Extended String Delimeter

print(###""Hello", \###n he said"###)

// Raw String + String Interpolation
let temp = 26
print(#"오늘의 기온은 \#(temp)도 입니다."#)

#"""
"""#



