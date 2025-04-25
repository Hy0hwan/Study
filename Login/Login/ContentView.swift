//
//  ContentView.swift
//  Login
//
//  Created by 김효환 on 4/17/25.
//

import SwiftUI

// var id: String = "HyoHwan" //변수


struct ContentView: View {
    
    //var id: String = "HyoHwan" //속성, Property
    
    @State var id: String = "HyoHwan" //State Variable
    @State var password: String = ""
    @State var result: String = ""

    
    var body: some View {
        VStack {
            TextField("아이디", text: $id)
                .textFieldStyle(.roundedBorder)
            
            TextField("비밀번호", text: $password)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // 아이디 : 입력받은 ID
                // password : 1234qwer
                
                // 둘 중에 하나라도 비어 있다면
                // "계정을 입력하세요"
//                
//                if id.isEmpty {
//                    result = "아이디를 입력하세요!"
//                    return
//                } else if password.isEmpty {
//                    result = "비밀번호를 입력하세요!"
//                    return
//                }
//                
                guard !id.isEmpty && !password.isEmpty else {
                    result = "계정정보를 입력하세요"
                    return
                }
//                
//                guard id.isEmpty else {
//                    result = "아이디가 비어있습니다."
//                    return
//                }
//                
//                guard password.isEmpty else {
//                    result = "password 비어있습니다."
//                    return
//                }
                
                
                
                if id == "HyoHwan" && password == "1234qwer" {
                    result = "로그인!"
                } else {
                    result = "아이디나 비밀번호를 다시 확인하세요"
                }
                

//                if id == "HyoHwan" && password == "1234qwer" {
//                    result = "로그인!"
//                } else {
//                    result = "아이디나 비밀번호를 다시 확인하세요"
//                }
                
                //result = id == "HyoHwan" && password == "1234qwer" ? "성공" : "실패"
                

                
            } label: {
                Text("로그인")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            
            Text(result)
                .font(.largeTitle)
            
            Spacer() //남은 공간 채움
        
        }
        .padding() // 기본여백
    }
}

#Preview {
    ContentView()
}
