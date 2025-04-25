import UIKit

let a = 123
// 스칼라 타입

let b = (123, 456) // Tuple, 튜플
// Compound Type, 컴파운드 타입
// Composit Type, 컴포짓 타입

// Unnamed Tuple
var data = ("<html>", 200, "ok", 12.34)

data.0
data.1
data.2
data.3

data.1 = 404


var named = (body: "<html>", statusCode: 200, message: "ok", size: 12.34)
named.0
//let body = named.body
//let code = named.statusCode
//let msg = named.message
//let size = named.size

// Tuple Decomposition, 튜플 분해 문법
let (body, code, msg, size) = named
