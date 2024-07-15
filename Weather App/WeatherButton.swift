//
//  WeatherButton.swift
//  Weather App
//
//  Created by Aldrei Glenn Nuqui on 5/23/24.
//

import SwiftUI

struct WeatherButton: View {
    
    var isNight: Bool
    var buttonTitle: String
    var titleColor: Color
    
    var body: some View {
        Text(buttonTitle)
            .frame(width: 280, height: 50)
            .background(isNight ? Color.black.gradient : Color.blue.gradient)
            .foregroundStyle(titleColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    WeatherButton(isNight: false, buttonTitle: "Test Title", titleColor: .white)
}
