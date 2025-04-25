import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/LoginForm/LoginForm/ContentView.swift", line: 1)
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
        HStack(spacing: __designTimeInteger("#60433_0", fallback: 0)) {
            VStack {
                VStack {
                    Text(__designTimeString("#60433_1", fallback: "KARC"))
                        .font(.largeTitle)
                        .bold()
                        .scaleEffect(x: __designTimeFloat("#60433_2", fallback: 0.7), y: __designTimeFloat("#60433_3", fallback: 1.2))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    VStack {
                        Text(__designTimeString("#60433_4", fallback: "Hello!"))
                            .font(.system(size: __designTimeInteger("#60433_5", fallback: 90)))
                            .fontWeight(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(__designTimeString("#60433_6", fallback: "Welcone back to the community"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, __designTimeInteger("#60433_7", fallback: 30))
                        
                        Button {
                            
                        } label: {
                            Text(__designTimeString("#60433_8", fallback: "Log in with Mobile Number"))
                                .font(.footnote)
                                .tint(.primary)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .overlay {
                                    RoundedRectangle(cornerRadius: __designTimeInteger("#60433_9", fallback: 10))
                                        .stroke(.gray.opacity(__designTimeFloat("#60433_10", fallback: 0.5)), lineWidth: __designTimeInteger("#60433_11", fallback: 1))
                                }
                        }
                        
                        ZStack {
                            Rectangle()
                                .fill(.gray.opacity(__designTimeFloat("#60433_12", fallback: 0.3)))
                                .frame(height: __designTimeInteger("#60433_13", fallback: 1))
                            Text(__designTimeString("#60433_14", fallback: "or"))
                                .font(.caption)
                                .padding()
                                .background()
                        }
                        .padding(.horizontal, __designTimeInteger("#60433_15", fallback: 80))
                        
                        VStack {
                            TextField(__designTimeString("#60433_16", fallback: "Your email"), text: $email)
                                .padding()
                                .overlay {
                                    RoundedRectangle(cornerRadius: __designTimeInteger("#60433_17", fallback: 10))
                                        .stroke(.gray.opacity(__designTimeFloat("#60433_18", fallback: 0.5)), lineWidth: __designTimeInteger("#60433_19", fallback: 1))
                                }
                            
                            
                            SecureField(__designTimeString("#60433_20", fallback: "Password"), text: $password)
                                .padding()
                                .overlay {
                                    RoundedRectangle(cornerRadius: __designTimeInteger("#60433_21", fallback: 10))
                                        .stroke(.gray.opacity(__designTimeFloat("#60433_22", fallback: 0.5)), lineWidth: __designTimeInteger("#60433_23", fallback: 1))
                                }
                            
                            Button {
                                
                            } label: {
                                Text(__designTimeString("#60433_24", fallback: "Forgot Password?"))
                                    .font(.caption)
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            Button {
                                
                            } label: {
                                Text(__designTimeString("#60433_25", fallback: "Log in"))
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, __designTimeInteger("#60433_26", fallback: 8))
                                    .foregroundStyle(.background)
                                
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.primary)
                            .buttonBorderShape(.capsule)
                            .padding(.vertical, __designTimeInteger("#60433_27", fallback: 25))
                            
                        }
                        
                        HStack {
                            Text(__designTimeString("#60433_28", fallback: "Don't have an account?"))
                            
                            Button {
                                
                            } label: {
                                Text(__designTimeString("#60433_29", fallback: "Sign up"))
                                    .bold()
                            }
                        }
                        .font(.caption)
                        
                    }
                    .frame(maxWidth: __designTimeInteger("#60433_30", fallback: 300))
                    
                    Spacer()
                }
                
            }
            .padding(__designTimeInteger("#60433_31", fallback: 30))
            .frame(maxWidth: .infinity)
            
            VStack {
                HStack(spacing: __designTimeInteger("#60433_32", fallback: 20)) {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text(__designTimeString("#60433_33", fallback: "Sign Up"))
                    }
                    .tint(.white)
                    
                    
                    
                    Button {
                        
                    } label: {
                        Text(__designTimeString("#60433_34", fallback: "Join Us"))
                            .padding()
                            .padding(.horizontal)
                            .overlay {
                                Capsule()
                                    .stroke(.white, lineWidth: __designTimeInteger("#60433_35", fallback: 1))
                            }
                    }
                    .tint(.white)

                }
                
                Spacer()
                
                Text(__designTimeString("#60433_36", fallback: "Discover the hidden gems of the world, one step at a time."))
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text(__designTimeString("#60433_37", fallback: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"))
                    .foregroundStyle(.white)
                    .opacity(__designTimeFloat("#60433_38", fallback: 0.6))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, __designTimeInteger("#60433_39", fallback: 16))
                    .padding(.bottom, __designTimeInteger("#60433_40", fallback: 50))
                
                
            }
            .padding(__designTimeInteger("#60433_41", fallback: 30))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Image(__designTimeString("#60433_42", fallback: "mesh"))
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
        }
        .frame(maxHeight: __designTimeInteger("#60433_43", fallback: 800))
        .background()
        .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#60433_44", fallback: 60)))
        .shadow(radius: __designTimeInteger("#60433_45", fallback: 30))
        .padding(__designTimeInteger("#60433_46", fallback: 50))
        
    }
}

#Preview {
    ContentView()
}

