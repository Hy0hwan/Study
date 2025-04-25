//
//  ContentView.swift
//  Login
//
//  Created by KxCoding on 4/17/25.
//

import SwiftUI

//var id: String = "kxcoding" // 변수

struct ContentView: View {
    //var id: String = "kxcoding" // 속성, Property
    @State var id: String = "kxcoding" // State Variable
    @State var password: String = ""
    @State var result: String = ""

    var body: some View {
        VStack {
			TextField("아이디", text: $id)
                .textFieldStyle(.roundedBorder)

            TextField("패스워드", text: $password)
                .textFieldStyle(.roundedBorder)

            // 논리 연산에서는 함수를 호출하지 말자! 피연산자 위치에서
            // 논리 연산 앞에서 결과를 도출하고 그 결과를 피연산자로 사용하자!

            Button {
				// 입력값 검증

                // 둘 중에 하나라도 비어 있다면
                // "계정을 입력하세요"
                guard !id.isEmpty && !password.isEmpty else {
                    result = "계정을 입력하세요"
                    return
                }

                // 조건을 충족하지 않으면 거기에서 바로 끝낸다. Early Exit

                // 1
                if id == "kxcoding" && password == "1234" {
                    result = "성공"
                } else {
                    result = "실패"
                }

//                // 2
//                result = id == "kxcoding" && password == "1234" ? "성공" : "실패"
//
//                // 3
//                result = if id == "kxcoding" && password == "1234" { "성공" } else { "실패" }
            } label: {
                Text("로그인")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)

            Text(result)
                .font(.largeTitle)

            Spacer()// 남은 공간 채움
        }
        .padding() // 기본여백
    }
}

#Preview {
    ContentView()
}
