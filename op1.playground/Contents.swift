import UIKit

// 옵셔널 체이닝

let a = "Str".count.advanced(by: 0).description
// 모든 표현식 넌 옵셔널 표현식
// 표현식의 결과는 마지막 표현식의 값

// 일부 표현식이옵셔널 표현식
// 표현식의 결과는 마지막 표현식의 값
// 결과 값의 타입은 마지막 표현식의 타입 + 옵셔널

let b = Int("123")?.description.count

// 표현식이 nil이면 나머지 표현식은 평가하지 않고
// nil을 리턴하고 끝난다.
let c = Int("not")?.description.count


// Lazy Property -> 초기화 시점이 늦어진다..? (지연 저장속성)

struct Image {
    init() { // 생성자가 호출되었다 && 에러가 발생하지 않았다. == 메모리에 정상적으로 만들어졌다.
        print("new image")
    }
}


struct BlogPost {
    let title: String = "Title"
    let content: String = "Contents"
    lazy var attachment: Image = Image()
    
    let date: Date = Date()
//    var formattedDate: String {
//        // iOS 포멧팅 -> formatter
//        let f = DateFormatter()
//        f.dateStyle = .long
//        f.timeStyle = .medium
//        
//        return f.string(from: date)
//    }
    
    lazy var formattedDate: String = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        
        return f.string(from: date)
    }()
}

var post = BlogPost()

// 블로그 글 목록
// 타이틀

//post.attachment
post.formattedDate


