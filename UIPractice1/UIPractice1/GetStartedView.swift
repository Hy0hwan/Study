//
//  ContentView.swift
//  UIPractice1
//
//  Created by 김효환 on 4/22/25.
//


import SwiftUI

struct GetStartedView: View {
    @State var showSignUp = false
    

    var body: some View {
        VStack {
            Spacer()
            
            
            VStack(spacing: 0){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Text("Name.App")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
                    .fontDesign(.rounded)
            }
            
            Spacer()
            
            VStack {
                Button {
                    showSignUp = true
                } label: {
                    Text("Get Started")
                        .font(.title)
                        .tint(.green)
                        .fontDesign(.rounded)
                        .fontWeight(.semibold)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(.white)
                        .clipShape(Capsule())
                }
                Button {
                    
                } label: {
                    Text("I already have an account")
                        .tint(.white)
                        .font(.caption)
                }
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 50)
            .sheet(isPresented: $showSignUp, onDismiss: {}) {
                       SignUpView()
                   }
        }
        .background{
            BackgroundView()
        }
    }
}

#Preview {
    GetStartedView()
}
