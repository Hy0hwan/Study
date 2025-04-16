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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text)
            
            Button("Print") {
                text = "Hello, World"
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
