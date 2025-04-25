//
//  ContentView.swift
//  UIPractice0
//
//  Created by 김효환 on 4/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack{
                Image("bkg")
                    .resizable()
                    .scaledToFit()
            }
            .frame(maxHeight: .infinity)
            .background(Color("heroBackground"))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .padding()
            
            VStack{
                Spacer()
                
                Text("Discover your \nDream job Here")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    
                Text("Explore all the most exiting jobs roles based on yout interest And study major")
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    .padding(.horizontal, 40)

                
                Spacer()
                
                HStack(spacing: 0){
                    Button{
                        
                    } label: {
                        Text("Register")
                            .tint(.primary)
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 24)
                    .background(.background)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    Button{
                        
                    } label: {
                        Text("Sign in")
                            .tint(.primary)
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 24)
                }
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .overlay{
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(.background, lineWidth: 2)
                        .opacity(0.8)
                }
                .padding()
                .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
            
        }
        .background(.regularMaterial)
        .background {
            Image("bkg")
                .resizable()
                .scaledToFill()
                .opacity(0.5)
        }
    }
}

#Preview {
    ContentView()
}
