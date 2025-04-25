//
//  ContentView.swift
//  LoginForm
//
//  Created by 김효환 on 4/24/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        HStack(spacing: 0) {
            VStack {
                VStack {
                    Text("KARC")
                        .font(.largeTitle)
                        .bold()
                        .scaleEffect(x: 0.7, y: 1.2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    VStack {
                        Text("Hello!")
                            .font(.system(size: 90))
                            .fontWeight(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Welcone back to the community")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 30)
                        
                        Button {
                            
                        } label: {
                            Text("Log in with Mobile Number")
                                .font(.footnote)
                                .tint(.primary)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray.opacity(0.5), lineWidth: 1)
                                }
                        }
                        
                        ZStack {
                            Rectangle()
                                .fill(.gray.opacity(0.3))
                                .frame(height: 1)
                            Text("or")
                                .font(.caption)
                                .padding()
                                .background()
                        }
                        .padding(.horizontal, 80)
                        
                        VStack {
                            TextField("Your email", text: $email)
                                .padding()
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray.opacity(0.5), lineWidth: 1)
                                }
                            
                            
                            SecureField("Password", text: $password)
                                .padding()
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray.opacity(0.5), lineWidth: 1)
                                }
                            
                            Button {
                                
                            } label: {
                                Text("Forgot Password?")
                                    .font(.caption)
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            Button {
                                
                            } label: {
                                Text("Log in")
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 8)
                                    .foregroundStyle(.background)
                                
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.primary)
                            .buttonBorderShape(.capsule)
                            .padding(.vertical, 25)
                            
                        }
                        
                        HStack {
                            Text("Don't have an account?")
                            
                            Button {
                                
                            } label: {
                                Text("Sign up")
                                    .bold()
                            }
                        }
                        .font(.caption)
                        
                    }
                    .frame(maxWidth: 300)
                    
                    Spacer()
                }
                
            }
            .padding(30)
            .frame(maxWidth: .infinity)
            
            VStack {
                HStack(spacing: 20) {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                    }
                    .tint(.white)
                    
                    
                    
                    Button {
                        
                    } label: {
                        Text("Join Us")
                            .padding()
                            .padding(.horizontal)
                            .overlay {
                                Capsule()
                                    .stroke(.white, lineWidth: 1)
                            }
                    }
                    .tint(.white)

                }
                
                Spacer()
                
                Text("Discover the hidden gems of the world, one step at a time.")
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt")
                    .foregroundStyle(.white)
                    .opacity(0.6)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 16)
                    .padding(.bottom, 50)
                
                
            }
            .padding(30)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Image("mesh")
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
        }
        .frame(maxHeight: 800)
        .background()
        .clipShape(RoundedRectangle(cornerRadius: 60))
        .shadow(radius: 30)
        .padding(50)
        
    }
}

#Preview {
    ContentView()
}

