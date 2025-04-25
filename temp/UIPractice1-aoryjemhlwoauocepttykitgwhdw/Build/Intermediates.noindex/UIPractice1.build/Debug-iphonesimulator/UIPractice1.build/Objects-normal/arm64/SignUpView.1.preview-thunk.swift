import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/UIPractice1/UIPractice1/SignUpView.swift", line: 1)
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
            Image(__designTimeString("#37379_0", fallback: "logo"))
                .resizable()
                .scaledToFit()
                .frame(height: __designTimeInteger("#37379_1", fallback: 150))
                .padding(.bottom, __designTimeInteger("#37379_2", fallback: 30))
            
            VStack {
                VStack{
                    Text("hello\(Text(__designTimeString("#37379_3", fallback: "!")).italic())")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.green)
                    
                    VStack(spacing: __designTimeInteger("#37379_4", fallback: 30)) {
                        RoundedBorderTextField(title: __designTimeString("#37379_5", fallback: "Username"), systemName: __designTimeString("#37379_6", fallback: "person"), value: $username)
                        
                        RoundedBorderTextField(title: __designTimeString("#37379_7", fallback: "Email"), systemName: __designTimeString("#37379_8", fallback: "envelope"), value: $email)
                        
                        RoundedBorderTextField(title: __designTimeString("#37379_9", fallback: "PassWord"), systemName: __designTimeString("#37379_10", fallback: "lock.shield"), value: $password, secure: __designTimeBoolean("#37379_11", fallback: true))
                    }
                    
                    HStack(spacing: __designTimeInteger("#37379_12", fallback: 0)) {
                        Button {
                            agree.toggle()
                        } label: {
                            if agree {
                                Image(systemName: __designTimeString("#37379_13", fallback: "checkmark.square"))
                                    .symbolVariant(.fill)
                                    .tint(.green)
                            } else {
                                Image(systemName: __designTimeString("#37379_14", fallback: "square"))
                                    .tint(.secondary)
                            }
                        }
                        
                        Text(__designTimeString("#37379_15", fallback: "  I agree to the"))
                            .foregroundStyle(.secondary)
                        
                        Button {
                            
                        } label: {
                            Text(__designTimeString("#37379_16", fallback: " terms and conditions"))
                                .bold()
                        }
                        .tint(.secondary)
                        
                    }
                    .font(.caption)
                    .padding(.vertical, __designTimeInteger("#37379_17", fallback: 5))
                    
                    Button {
                        
                    } label: {
                        Text(__designTimeString("#37379_18", fallback: "Sign up"))
                            .font(.title2)
                            .tint(.white)
                            .fontDesign(.rounded)
                            .fontWeight(.semibold)
                            .padding(.vertical, __designTimeInteger("#37379_19", fallback: 12))
                            .frame(maxWidth: .infinity)
                            .background(.green)
                            .clipShape(Capsule())
                    }
                    .padding(.top, __designTimeInteger("#37379_20", fallback: 20))
                    
                    ZStack {
                        Rectangle()
                            .fill(.secondary)
                            .frame(height: __designTimeInteger("#37379_21", fallback: 1))
                        
                        Text(__designTimeString("#37379_22", fallback: "or"))
                            .font(.caption)
                            .foregroundStyle(.secondary)
                            .padding(.horizontal)
                            .background()
                    }
                    .padding(.vertical, __designTimeInteger("#37379_23", fallback: 12))
                    
                    VStack {
                        HStack(spacing: __designTimeInteger("#37379_24", fallback: 30)) {
                            ColoredRoundedRectButton(color: .red) {
                                print(__designTimeString("#37379_25", fallback: "red"))
                            }
                            
                            ColoredRoundedRectButton(color: .yellow) {
                                print(__designTimeString("#37379_26", fallback: "yellow"))

                            }
                            
                            ColoredRoundedRectButton(color: .blue) {
                                print(__designTimeString("#37379_27", fallback: "blue"))

                            }
                        }
                        
                        Text("Login in with your \(Text(__designTimeString("#37379_28", fallback: "Social media")).bold()) account")
                            .font(.footnote)
                            .fontWeight(.light)
                            .padding(.top)
                    }
                    
                }
                .padding(__designTimeInteger("#37379_29", fallback: 20))
                .padding(.horizontal)
                
                Spacer()
            }
            .background(.white)
            .clipShape(UnevenRoundedRectangle(topLeadingRadius: __designTimeInteger("#37379_30", fallback: 40), topTrailingRadius: __designTimeInteger("#37379_31", fallback: 40)))
            .ignoresSafeArea()
            
        }
        .background(BackgroundView())
        
    }
    
}

#Preview {
    SignUpView()
}
