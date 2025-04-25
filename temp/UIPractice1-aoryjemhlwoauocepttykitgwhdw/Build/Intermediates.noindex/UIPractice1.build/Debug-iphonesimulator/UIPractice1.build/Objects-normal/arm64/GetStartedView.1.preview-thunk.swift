import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/UIPractice1/UIPractice1/GetStartedView.swift", line: 1)
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
            
    
            
            VStack(spacing: __designTimeInteger("#26170_0", fallback: 0)){
                Image(__designTimeString("#26170_1", fallback: "logo"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: __designTimeInteger("#26170_2", fallback: 200))
                
                Text(__designTimeString("#26170_3", fallback: "Name.App"))
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
                    .fontDesign(.rounded)
            }
            
            Spacer()
            
            VStack {
                Button {
                    showSignUp = __designTimeBoolean("#26170_4", fallback: true)
                } label: {
                    Text(__designTimeString("#26170_5", fallback: "Get Started"))
                        .font(.title)
                        .tint(.green)
                        .fontDesign(.rounded)
                        .fontWeight(.semibold)
                        .padding(__designTimeInteger("#26170_6", fallback: 20))
                        .frame(maxWidth: .infinity)
                        .background(.white)
                        .clipShape(Capsule())
                }
                Button {
                    
                } label: {
                    Text(__designTimeString("#26170_7", fallback: "I already have an account"))
                        .tint(.white)
                        .font(.caption)
                }
            }
            .padding(.horizontal, __designTimeInteger("#26170_8", fallback: 40))
            .padding(.bottom, __designTimeInteger("#26170_9", fallback: 50))
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
