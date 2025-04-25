//
//  SignInView.swift
//  UIPractice0
//
//  Created by 김효환 on 4/24/25.
//

import SwiftUI

struct SignInView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @Environment(\.colorScheme) var colorScheme
    
    var buttonStrokeColor: Color {
        colorScheme == .dark ? .gray.opacity(0.8) : .white
    }
    
    var body: some View {
        VStack(spacing: 0) {
            VStack{
                Text("Hello Again")
                    .font(.title)
                    .bold()
                
                Text("Welcome back you've \nbeem missed!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
            }
            .padding(.top, 40)
            
            VStack {
                TextField("Enter username", text: $username)
                    .padding()
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                
                HStack{
                    SecureField("Password", text: $password)
                    Image(systemName: "eye.slash")
                        .foregroundStyle(.secondary)
                        .opacity(0.4)
                }
                .padding()
                .background()
                .clipShape(RoundedRectangle(cornerRadius: 14))
            }
            .padding(.top, 40)
            
            HStack {
                Spacer()
                
                Button("Recovery Password") {
                    
                }
                .font(.footnote)
                .bold()
                .tint(.primary)
                .padding(.vertical)
                
            }
            
            Button {
                
            } label: {
                Text("Sign in")
                    .tint(.white)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.pink)
                    .offset(y: 20)
                    .opacity(0.3)
                    .blur(radius: 30)
            }
            
            TaperedLine()
                .subtracting(ScaledShape(shape: Rectangle(), scale: CGSize(width: 0.5, height: 1)))
                .fill(LinearGradient(
                    colors: [.clear, .gray, .clear],
                    startPoint: .leading,
                    endPoint: .trailing))
                .frame(height: 4)
                .overlay {
                    Text("Or continue with")
                        .foregroundStyle(.secondary)
                }
                .padding(.top, 40)
            
            HStack(spacing: 30) {
                Button {
                } label: {
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(buttonStrokeColor, lineWidth: 2)
                        }
                }
                
                Button {
                } label: {
                    Image("apple")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(buttonStrokeColor, lineWidth: 2)
                        }
                }
                
                Button {
                } label: {
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(buttonStrokeColor, lineWidth: 2)
                        }
                }
                
            }
            .padding()
            .padding(.top, 30)
            .padding(.horizontal, 25)
            
            
            HStack {
                Text("Not a member?")
                
                Button("Register now") {}
                
            }
            .bold()
            .font(.footnote)
            .padding(.top, 50)
            Spacer()
        }
        .padding()
        .background(.regularMaterial)
        .background {
            Color.gray.opacity(0.5)
        }
    }
}

#Preview {
    SignInView()
}


struct TaperedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 왼쪽 시작점
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        
        // 상단 경로: 왼쪽에서 오른쪽으로
        path.addLine(to: CGPoint(x: rect.midX, y: 0))
        
        // 오른쪽 :
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        
        // 하단 경로: 오른쪽에서 왼쪽으로
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        path.closeSubpath()
        return path
    }
}
