//
//  ContentView.swift
//  SunnyDay
//
//  Created by KxCoding on 4/17/25.
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
                .frame(width: 200, height: 200)

            Text(currentWeather)
                .font(.largeTitle)

            Text(status)
                .font(.title3)

            Button {
                guard let weather = ["맑음", "흐림", "비", "눈"].randomElement() else {
					return
                }

                currentWeather = weather

                // if
                if weather == "맑음" {
                    weatherImage = "sun"
                } else if weather == "흐림" {
                    weatherImage = "cloud"
                } else if weather == "비" {
                    weatherImage = "rain"
                } else if weather == "눈" {
                    weatherImage = "snow"
                }

                // Value Matching
                switch weather {
                case "맑음":
                    weatherImage = "sun"
                case "흐림":
                    weatherImage = "cloud"
                case "비":
                    weatherImage = "rain"
                case "눈":
                    weatherImage = "snow"
                default:
                    break
                }

                // Interval Matching
                temperature = Int.random(in: -30 ... 40)

                switch temperature {
                    case ..<(-10):
                        status = "이불 밖은 위험해요"
                    case -10 ... 10:
                        status = "두툼한 패딩 챙기세요"
                    case 11 ... 20:
                        status = "일교차 조심하세요"
                    case 21 ... 30:
                        status = "여름이 다가오고 있어요"
                    case 31...:
                        status = "XX 여름"
                    default:
                        break
                }
            } label: {
                Text("새로고침")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
