import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/day1/HelloSwiftUI/HelloSwiftUI/ContentView.swift", line: 1)
//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김효환 on 4/15/25.
//

// Run Destination <- 툴바


import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: __designTimeString("#1231_0", fallback: "globe"))
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text)
            
            Button(__designTimeString("#1231_1", fallback: "Print")) {
                text = __designTimeString("#1231_2", fallback: "Hello, World")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
