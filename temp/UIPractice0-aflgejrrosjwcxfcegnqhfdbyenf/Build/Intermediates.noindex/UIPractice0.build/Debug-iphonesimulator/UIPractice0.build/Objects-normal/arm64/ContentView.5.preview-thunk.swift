import func SwiftUI.__designTimeSelection

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
        __designTimeSelection(VStack(spacing: __designTimeInteger("#10872_0", fallback: 0)) {
            __designTimeSelection(VStack{
                __designTimeSelection(Image(__designTimeString("#10872_1", fallback: "bkg"))
                    .resizable()
                    .scaledToFit(), "#10872.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0]")
            }
            .frame(maxHeight: .infinity)
            .background(__designTimeSelection(Color(__designTimeString("#10872_2", fallback: "heroBackground")), "#10872.[1].[0].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value"))
            .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#10872_3", fallback: 30)), "#10872.[1].[0].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value"))
            .padding(), "#10872.[1].[0].property.[0].[0].arg[1].value.[0]")
            
            __designTimeSelection(VStack{
                __designTimeSelection(Spacer(), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[0]")
                
                __designTimeSelection(Text("Discover your \nDream job Here")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[1]")
                    
                __designTimeSelection(Text(__designTimeString("#10872_4", fallback: "Explore all the most exiting jobs roles based on yout interest And study major"))
                    .multilineTextAlignment(.center)
                    .padding(.top, __designTimeInteger("#10872_5", fallback: 10))
                    .padding(.horizontal, __designTimeInteger("#10872_6", fallback: 40)), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[2]")

                
                __designTimeSelection(Spacer(), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[3]")
                
                __designTimeSelection(HStack(spacing: __designTimeInteger("#10872_7", fallback: 0)){
                    __designTimeSelection(Button{
                        
                    } label: {
                        __designTimeSelection(Text(__designTimeString("#10872_8", fallback: "Register"))
                            .tint(.primary)
                            .bold(), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4].arg[1].value.[0].arg[1].value.[0]")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, __designTimeInteger("#10872_9", fallback: 24))
                    .background(.background)
                    .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#10872_10", fallback: 12)), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4].arg[1].value.[0].modifier[3].arg[0].value")), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4].arg[1].value.[0]")
                    
                    __designTimeSelection(Button{
                        
                    } label: {
                        __designTimeSelection(Text(__designTimeString("#10872_11", fallback: "Sign in"))
                            .tint(.primary)
                            .bold(), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4].arg[1].value.[1].arg[1].value.[0]")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, __designTimeInteger("#10872_12", fallback: 24)), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4].arg[1].value.[1]")
                }
                .background(__designTimeSelection(.gray.opacity(__designTimeFloat("#10872_13", fallback: 0.1)), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4].modifier[0].arg[0].value"))
                .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#10872_14", fallback: 14)), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4].modifier[1].arg[0].value"))
                .overlay{
                    __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#10872_15", fallback: 14))
                        .stroke(.background, lineWidth: __designTimeInteger("#10872_16", fallback: 2))
                        .opacity(__designTimeFloat("#10872_17", fallback: 0.8)), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4].modifier[2].arg[0].value.[0]")
                }
                .padding()
                .padding(.horizontal), "#10872.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[4]")
            }
            .frame(maxHeight: .infinity), "#10872.[1].[0].property.[0].[0].arg[1].value.[1]")
            
        }
        .background(.regularMaterial)
        .background {
            __designTimeSelection(Image(__designTimeString("#10872_18", fallback: "bkg"))
                .resizable()
                .scaledToFill()
                .opacity(__designTimeFloat("#10872_19", fallback: 0.5)), "#10872.[1].[0].property.[0].[0].modifier[1].arg[0].value.[0]")
        }, "#10872.[1].[0].property.[0].[0]")
    }
}

#Preview {
    ContentView()
}
