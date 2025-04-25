//
//  ContentView.swift
//  HelloScope
//
//  Created by KxCoding on 4/21/25.
//

import SwiftUI

// Global

// #1. 동일한 스코프에 접근할 수 있다.
let b = 0
let a = 0
//print(b)
//print(c)

// #2. Global Scope에서는 순서에 관계없이 접근할 수 있다.
// #3. Local Scope에서는 Global Scope나 상위 Scope에 접근할 수 있다.
// #4. Global Scope가 아니라면 이미 선언되어 있는 요소에만 접근할 수 있다.
// #5. 상위 스코프는 하위 스코프에 접근할 수 없다.
// #6. 서로 다른 스코프에 같은 이름을 가진 요소가 있다면, 가장 인접한 스코프에 접근한다.
// #7. Global Scope가 아닌 다른 모든 Scope는 시작과 끝을 명확히 해야 한다. a.k.a 블록을 잘 써야한다!

struct ContentView: View
{
    var body: some View
    {


        VStack
        {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }

    func doSomething() {
        // Local
        var a = 0

        print(a)
        print(b)
        print(c)

        //print(d) X

        if true {
            let d = 123
            let a = 123
            print(a)
            print(b)
            print(c)
        }

        //print(d) X
    }
}

#Preview {
    ContentView()
}

let c = 123 // 처음에 접근할 때 초기화
