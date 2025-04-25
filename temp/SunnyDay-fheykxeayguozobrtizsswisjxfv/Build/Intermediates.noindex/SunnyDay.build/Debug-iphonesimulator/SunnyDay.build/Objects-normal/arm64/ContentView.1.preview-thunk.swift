import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/gimhyohwan/Swift/SunnyDay/SunnyDay/ContentView.swift", line: 1)
//
//  ContentView.swift
//  SunnyDay
//
//  Created by 김효환 on 4/17/25.
//



import SwiftUI

struct ContentView: View {
    
    @State var weatherImage = "sun"
    @State var currentWeather = "맑음"
    @State var temperature = 0
    @State var status = ""
    
    var body: some View {
        VStack {
            Image(weatherImage)
                .resizable()
                .frame(width: __designTimeInteger("#6386_0", fallback: 200), height: __designTimeInteger("#6386_1", fallback: 200))
            
            Text(currentWeather)
                .font(.largeTitle)
            
            Text(status)
                .font(.title3)
            
            Button {
                let weather = [__designTimeString("#6386_2", fallback: "맑음"), __designTimeString("#6386_3", fallback: "흐림"), __designTimeString("#6386_4", fallback: "비"), __designTimeString("#6386_5", fallback: "눈")].randomElement()!
                
                currentWeather = weather
                
                
                switch weather {
                case "맑음" :
                    weatherImage = __designTimeString("#6386_6", fallback: "sun")
                case "흐림" :
                    weatherImage = __designTimeString("#6386_7", fallback: "cloud")
                case "비" :
                    weatherImage = __designTimeString("#6386_8", fallback: "rain")
                case "눈" :
                    weatherImage = __designTimeString("#6386_9", fallback: "snow")
                default:
                    break
                }

                temperature = Int.random(in: __designTimeInteger("#6386_10", fallback: -30) ... __designTimeInteger("#6386_11", fallback: 40))
                
                switch temperature {
                 case ..<(-10):
                     status = __designTimeString("#6386_12", fallback: "이불 밖은 위험해요")
                 case -10 ... 10:
                     status = __designTimeString("#6386_13", fallback: "두툼한 패딩 챙기세요")
                 case 11 ... 20:
                     status = __designTimeString("#6386_14", fallback: "일교차 조심하세요")
                 case 21 ... 30:
                     status = __designTimeString("#6386_15", fallback: "여름이 다가오고 있어요")
                 case 31...:
                     status = __designTimeString("#6386_16", fallback: "XX 여름")
                 default:
                     break
                 }
                
                
                
            } label: {
                Text(__designTimeString("#6386_17", fallback: "새로고침"))
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
