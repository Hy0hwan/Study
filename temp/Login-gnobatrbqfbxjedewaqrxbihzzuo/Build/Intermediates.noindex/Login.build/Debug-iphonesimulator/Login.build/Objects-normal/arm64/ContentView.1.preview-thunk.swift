import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/Login/Login/ContentView.swift", line: 1)
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
            TextField(__designTimeString("#23462_0", fallback: "아이디"), text: $id)
                .textFieldStyle(.roundedBorder)
            
            TextField(__designTimeString("#23462_1", fallback: "비밀번호"), text: $password)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // 아이디 : 입력받은 ID
                // password : 1234qwer
                
                // 둘 중에 하나라도 비어 있다면
                // "계정을 입력하세요"
                
                if  id.isEmpty {
                    result = __designTimeString("#23462_2", fallback: "아이디를 입력하세요!")
                }

                if id == __designTimeString("#23462_3", fallback: "HyoHwan") && password == __designTimeString("#23462_4", fallback: "1234qwer") {
                    result = __designTimeString("#23462_5", fallback: "로그인!")
                } else {
                    result = __designTimeString("#23462_6", fallback: "아이디나 비밀번호를 다시 확인하세요")
                }
                
                //result = id == "HyoHwan" && password == "1234qwer" ? "성공" : "실패"
                

                
            } label: {
                Text(__designTimeString("#23462_7", fallback: "로그인"))
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
