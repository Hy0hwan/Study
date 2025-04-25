import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/UIPractice0/UIPractice0/SignInView.swift", line: 1)
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
        colorScheme == .dark ? .gray.opacity(__designTimeFloat("#26896_0", fallback: 0.8)) : .white
    }
    
    var body: some View {
        VStack(spacing: __designTimeInteger("#26896_1", fallback: 0)) {
            VStack{
                Text(__designTimeString("#26896_2", fallback: "Hello Again"))
                    .font(.title)
                    .bold()
                
                Text("Welcome back you've \nbeem missed!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.top, __designTimeInteger("#26896_3", fallback: 10))
            }
            .padding(.top, __designTimeInteger("#26896_4", fallback: 40))
            
            VStack {
                TextField(__designTimeString("#26896_5", fallback: "Enter username"), text: $username)
                    .padding()
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#26896_6", fallback: 14)))
                
                HStack{
                    SecureField(__designTimeString("#26896_7", fallback: "Password"), text: $password)
                    Image(systemName: __designTimeString("#26896_8", fallback: "eye.slash"))
                        .foregroundStyle(.secondary)
                        .opacity(__designTimeFloat("#26896_9", fallback: 0.4))
                }
                .padding()
                .background()
                .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#26896_10", fallback: 14)))
            }
            .padding(.top, __designTimeInteger("#26896_11", fallback: 40))
            
            HStack {
                Spacer()
                
                Button(__designTimeString("#26896_12", fallback: "Recovery Password")) {
                    
                }
                .font(.footnote)
                .bold()
                .tint(.primary)
                .padding(.vertical)
                
            }
            
            Button {
                
            } label: {
                Text(__designTimeString("#26896_13", fallback: "Sign in"))
                    .tint(.white)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#26896_14", fallback: 12)))
            }
            .background {
                RoundedRectangle(cornerRadius: __designTimeInteger("#26896_15", fallback: 12))
                    .foregroundStyle(.pink)
                    .offset(y: __designTimeInteger("#26896_16", fallback: 20))
                    .opacity(__designTimeFloat("#26896_17", fallback: 0.3))
                    .blur(radius: __designTimeInteger("#26896_18", fallback: 30))
            }
            
            TaperedLine()
                .subtracting(ScaledShape(shape: Rectangle(), scale: CGSize(width: __designTimeFloat("#26896_19", fallback: 0.5), height: __designTimeInteger("#26896_20", fallback: 1))))
                .fill(LinearGradient(
                    colors: [.clear, .gray, .clear],
                    startPoint: .leading,
                    endPoint: .trailing))
                .frame(height: __designTimeInteger("#26896_21", fallback: 4))
                .overlay {
                    Text(__designTimeString("#26896_22", fallback: "Or continue with"))
                        .foregroundStyle(.secondary)
                }
                .padding(.top, __designTimeInteger("#26896_23", fallback: 40))
            
            HStack(spacing: __designTimeInteger("#26896_24", fallback: 30)) {
                Button {
                } label: {
                    Image(__designTimeString("#26896_25", fallback: "google"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#26896_26", fallback: 30), height: __designTimeInteger("#26896_27", fallback: 30))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: __designTimeInteger("#26896_28", fallback: 12))
                                .stroke(buttonStrokeColor, lineWidth: __designTimeInteger("#26896_29", fallback: 2))
                        }
                }
                
                Button {
                } label: {
                    Image(__designTimeString("#26896_30", fallback: "apple"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#26896_31", fallback: 30), height: __designTimeInteger("#26896_32", fallback: 30))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: __designTimeInteger("#26896_33", fallback: 12))
                                .stroke(buttonStrokeColor, lineWidth: __designTimeInteger("#26896_34", fallback: 2))
                        }
                }
                
                Button {
                } label: {
                    Image(__designTimeString("#26896_35", fallback: "facebook"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#26896_36", fallback: 30), height: __designTimeInteger("#26896_37", fallback: 30))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: __designTimeInteger("#26896_38", fallback: 12))
                                .stroke(buttonStrokeColor, lineWidth: __designTimeInteger("#26896_39", fallback: 2))
                        }
                }
                
            }
            .padding()
            .padding(.top, __designTimeInteger("#26896_40", fallback: 30))
            .padding(.horizontal, __designTimeInteger("#26896_41", fallback: 25))
            
            
            HStack {
                Text(__designTimeString("#26896_42", fallback: "Not a member?"))
                
                Button(__designTimeString("#26896_43", fallback: "Register now")) {}
                
            }
            .bold()
            .font(.footnote)
            .padding(.top, __designTimeInteger("#26896_44", fallback: 50))
            Spacer()
        }
        .padding()
        .background(.regularMaterial)
        .background {
            Color.gray.opacity(__designTimeFloat("#26896_45", fallback: 0.5))
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
        path.addLine(to: CGPoint(x: rect.midX, y: __designTimeInteger("#26896_46", fallback: 0)))
        
        // 오른쪽 :
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        
        // 하단 경로: 오른쪽에서 왼쪽으로
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        path.closeSubpath()
        return path
    }
}
