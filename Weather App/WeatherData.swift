//
//  WeatherData.swift
//  Weather App
//
//  Created by Aldrei Glenn Nuqui on 5/23/24.
//

import SwiftUI

struct WeatherData: Identifiable {
    let id = UUID()
    let day: String
    let imageName: String
    let temperature: Int
}

struct MockData {
    static let weathers = [
        WeatherData(day: "TUE", imageName: "sun.max.fill", temperature: 36),
        WeatherData(day: "WED", imageName: "cloud.bolt.rain.fill", temperature: 32),
        WeatherData(day: "THU", imageName: "cloud.sun.fill", temperature: 34),
        WeatherData(day: "FRI", imageName: "cloud.heavyrain.fill", temperature: 33),
        WeatherData(day: "SAT", imageName: "cloud.bolt.fill", temperature: 34)
    ]
}
