//
//  ContentView.swift
//  scope
//
//  Created by 김효환 on 4/21/25.
//

import SwiftUI

// #1. 동일한 스코프에 접근할 수 있다.
// #2. Global Scope에서는 순서에 관계없이 전근할 수 있다.
// #3. Local Scope에서는 Global Scope나 상위 Scope에 접근할 수 있다.
// #4. Global Scope가 아니라면 이미 선언되어 있는 요소에만 접근할 수 있다.
// #5. 상위 스코프는 하위 스코프에 접근할 수 없다.
// #6. 서로 다른 스코프에 같은 이름을 가진 요소가 있다면, 가장 인접한 스코프에 접근한다.
// #7. 


struct ContentView: View {
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
    func doSomething() {
        
        var a = 0
        print(a)
    }
}

#Preview {
    ContentView()
}
