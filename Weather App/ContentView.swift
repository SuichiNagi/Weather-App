//
//  ContentView.swift
//  Weather App
//
//  Created by Aldrei Glenn Nuqui on 5/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack {
                CityView(cityText: "Mandaluyong, MNL")

                WeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                            tempName: 36)
                
              
                HStack(spacing:20) {
                    ForEach(MockData.weathers) { weather in
                        WeatherListView(weather: weather)
                    }
                }
            
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(isNight: isNight, 
                                  buttonTitle: "Change Day Time",
                                  titleColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherListView: View {
    
    let weather: WeatherData
    
    var body: some View {
        VStack {
            Text(weather.day)
                .font(.system(size: 16, weight: .medium))
            Image(systemName: weather.imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(weather.temperature)°")
                .font(.system(size: 28, weight: .medium))
        }
        .foregroundStyle(Color(.white))
    }
}

struct BackgroundView: View {
    
    var isNight: Bool

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

struct CityView: View {
    
    var cityText: String
    
    var body: some View {
        Text(cityText)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct WeatherView: View {
    
    var imageName: String
    var tempName: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)

            Text("\(tempName)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}
