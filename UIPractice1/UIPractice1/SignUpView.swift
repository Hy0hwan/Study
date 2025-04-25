//
//  SignUpView.swift
//  UIPractice1
//
//  Created by 김효환 on 4/22/25.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var agree: Bool = false
    @State private var showEula: Bool = false
    
    
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .padding(.bottom, 30)
            
            VStack {
                VStack{
                    Text("hello\(Text("!").italic())")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.green)
                    
                    VStack(spacing: 30) {
                        RoundedBorderTextField(title: "Username", systemName: "person", value: $username)
                        
                        RoundedBorderTextField(title: "Email", systemName: "envelope", value: $email)
                        
                        RoundedBorderTextField(title: "PassWord", systemName: "lock.shield", value: $password, secure: true)
                    }
                    
                    HStack(spacing: 0) {
                        Button {
                            agree.toggle()
                        } label: {
                            if agree {
                                Image(systemName: "checkmark.square")
                                    .symbolVariant(.fill)
                                    .tint(.green)
                            } else {
                                Image(systemName: "square")
                                    .tint(.secondary)
                            }
                        }
                        
                        Text("  I agree to the")
                            .foregroundStyle(.secondary)
                        
                        Button {
                            
                        } label: {
                            Text(" terms and conditions")
                                .bold()
                        }
                        .tint(.secondary)
                        
                    }
                    .font(.caption)
                    .padding(.vertical, 5)
                    
                    Button {
                        
                    } label: {
                        Text("Sign up")
                            .font(.title2)
                            .tint(.white)
                            .fontDesign(.rounded)
                            .fontWeight(.semibold)
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity)
                            .background(.green)
                            .clipShape(Capsule())
                    }
                    .padding(.top, 20)
                    
                    ZStack {
                        Rectangle()
                            .fill(.secondary)
                            .frame(height: 1)
                        
                        Text("or")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                            .padding(.horizontal)
                            .background()
                    }
                    .padding(.vertical, 12)
                    
                    VStack {
                        HStack(spacing: 30) {
                            ColoredRoundedRectButton(color: .red) {
                                print("red")
                            }
                            
                            ColoredRoundedRectButton(color: .yellow) {
                                print("yellow")

                            }
                            
                            ColoredRoundedRectButton(color: .blue) {
                                print("blue")

                            }
                        }
                        
                        Text("Login in with your \(Text("Social media").bold()) account")
                            .font(.footnote)
                            .fontWeight(.light)
                            .padding(.top)
                    }
                    
                }
                .padding(20)
                .padding(.horizontal)
                
                Spacer()
            }
            .background(.white)
            .clipShape(UnevenRoundedRectangle(topLeadingRadius: 40, topTrailingRadius: 40))
            .ignoresSafeArea()
            
        }
        .background(BackgroundView())
        
    }
    
}

#Preview {
    SignUpView()
}
