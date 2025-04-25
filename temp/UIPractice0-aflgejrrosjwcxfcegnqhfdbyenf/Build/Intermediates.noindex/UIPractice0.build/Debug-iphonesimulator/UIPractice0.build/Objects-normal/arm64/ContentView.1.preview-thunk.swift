import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/UIPractice0/UIPractice0/ContentView.swift", line: 1)
//
//  ContentView.swift
//  UIPractice0
//
//  Created by 김효환 on 4/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: __designTimeInteger("#10872_0", fallback: 0)) {
            VStack{
                Image(__designTimeString("#10872_1", fallback: "bkg"))
                    .resizable()
                    .scaledToFit()
            }
            .frame(maxHeight: .infinity)
            .background(Color(__designTimeString("#10872_2", fallback: "heroBackground")))
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10872_3", fallback: 30)))
            .padding()
            
            VStack{
                Spacer()
                
                Text("Discover your \nDream job Here")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    
                Text(__designTimeString("#10872_4", fallback: "Explore all the most exiting jobs roles based on yout interest And study major"))
                    .multilineTextAlignment(.center)
                    .padding(.top, __designTimeInteger("#10872_5", fallback: 10))
                    .padding(.horizontal, __designTimeInteger("#10872_6", fallback: 40))

                
                Spacer()
                
                HStack(spacing: __designTimeInteger("#10872_7", fallback: 0)){
                    Button{
                        
                    } label: {
                        Text(__designTimeString("#10872_8", fallback: "Register"))
                            .tint(.primary)
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, __designTimeInteger("#10872_9", fallback: 24))
                    .background(.background)
                    .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10872_10", fallback: 12)))
                    
                    Button{
                        
                    } label: {
                        Text(__designTimeString("#10872_11", fallback: "Sign in"))
                            .tint(.primary)
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, __designTimeInteger("#10872_12", fallback: 24))
                }
                .background(.gray.opacity(__designTimeFloat("#10872_13", fallback: 0.1)))
                .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10872_14", fallback: 14)))
                .overlay{
                    RoundedRectangle(cornerRadius: __designTimeInteger("#10872_15", fallback: 14))
                        .stroke(.background, lineWidth: __designTimeInteger("#10872_16", fallback: 2))
                        .opacity(__designTimeFloat("#10872_17", fallback: 0.8))
                }
                .padding()
                .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
            
        }
        .background(.regularMaterial)
        .background {
            Image(__designTimeString("#10872_18", fallback: "bkg"))
                .resizable()
                .scaledToFill()
                .opacity(__designTimeFloat("#10872_19", fallback: 0.5))
        }
    }
}

#Preview {
    ContentView()
}
