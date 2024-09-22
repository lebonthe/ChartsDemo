//
//  MonthlyRainfallAndTemperature.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import Foundation

struct MonthlyRainfallAndTemperature: Hashable {
    var year: Int
    var month: Int
    var rainfall: Double // 雨量 (mm)
    var temperature: Double // 氣溫 (°C)
    
    var date: Date {
        let dateComponents = DateComponents(year: year, month: month)
        return Calendar.current.date(from: dateComponents) ?? Date()
    }
}


let rainfallAndTemperatureData: [MonthlyRainfallAndTemperature] = [
    // 2019 年
    MonthlyRainfallAndTemperature(year: 2019, month: 1, rainfall: 85, temperature: 16.0),
    MonthlyRainfallAndTemperature(year: 2019, month: 2, rainfall: 60, temperature: 17.2),
    MonthlyRainfallAndTemperature(year: 2019, month: 3, rainfall: 110, temperature: 18.5),
    MonthlyRainfallAndTemperature(year: 2019, month: 4, rainfall: 90, temperature: 19.8),
    MonthlyRainfallAndTemperature(year: 2019, month: 5, rainfall: 120, temperature: 22.3),
    MonthlyRainfallAndTemperature(year: 2019, month: 6, rainfall: 180, temperature: 25.1),
    MonthlyRainfallAndTemperature(year: 2019, month: 7, rainfall: 200, temperature: 28.5),
    MonthlyRainfallAndTemperature(year: 2019, month: 8, rainfall: 160, temperature: 29.2),
    MonthlyRainfallAndTemperature(year: 2019, month: 9, rainfall: 130, temperature: 26.8),
    MonthlyRainfallAndTemperature(year: 2019, month: 10, rainfall: 100, temperature: 23.4),
    MonthlyRainfallAndTemperature(year: 2019, month: 11, rainfall: 90, temperature: 20.1),
    MonthlyRainfallAndTemperature(year: 2019, month: 12, rainfall: 80, temperature: 17.5),

    // 2020 年
    MonthlyRainfallAndTemperature(year: 2020, month: 1, rainfall: 70, temperature: 16.3),
    MonthlyRainfallAndTemperature(year: 2020, month: 2, rainfall: 65, temperature: 17.8),
    MonthlyRainfallAndTemperature(year: 2020, month: 3, rainfall: 95, temperature: 18.7),
    MonthlyRainfallAndTemperature(year: 2020, month: 4, rainfall: 105, temperature: 20.0),
    MonthlyRainfallAndTemperature(year: 2020, month: 5, rainfall: 135, temperature: 22.8),
    MonthlyRainfallAndTemperature(year: 2020, month: 6, rainfall: 170, temperature: 25.5),
    MonthlyRainfallAndTemperature(year: 2020, month: 7, rainfall: 210, temperature: 29.0),
    MonthlyRainfallAndTemperature(year: 2020, month: 8, rainfall: 140, temperature: 28.7),
    MonthlyRainfallAndTemperature(year: 2020, month: 9, rainfall: 120, temperature: 26.5),
    MonthlyRainfallAndTemperature(year: 2020, month: 10, rainfall: 110, temperature: 22.9),
    MonthlyRainfallAndTemperature(year: 2020, month: 11, rainfall: 95, temperature: 19.5),
    MonthlyRainfallAndTemperature(year: 2020, month: 12, rainfall: 85, temperature: 18.0),

    // 2021 年
    MonthlyRainfallAndTemperature(year: 2021, month: 1, rainfall: 80, temperature: 15.9),
    MonthlyRainfallAndTemperature(year: 2021, month: 2, rainfall: 70, temperature: 16.8),
    MonthlyRainfallAndTemperature(year: 2021, month: 3, rainfall: 105, temperature: 19.0),
    MonthlyRainfallAndTemperature(year: 2021, month: 4, rainfall: 95, temperature: 20.5),
    MonthlyRainfallAndTemperature(year: 2021, month: 5, rainfall: 145, temperature: 23.0),
    MonthlyRainfallAndTemperature(year: 2021, month: 6, rainfall: 160, temperature: 26.2),
    MonthlyRainfallAndTemperature(year: 2021, month: 7, rainfall: 230, temperature: 28.8),
    MonthlyRainfallAndTemperature(year: 2021, month: 8, rainfall: 150, temperature: 28.9),
    MonthlyRainfallAndTemperature(year: 2021, month: 9, rainfall: 135, temperature: 26.9),
    MonthlyRainfallAndTemperature(year: 2021, month: 10, rainfall: 115, temperature: 23.5),
    MonthlyRainfallAndTemperature(year: 2021, month: 11, rainfall: 105, temperature: 20.0),
    MonthlyRainfallAndTemperature(year: 2021, month: 12, rainfall: 90, temperature: 17.9),

    // 2022 年
    MonthlyRainfallAndTemperature(year: 2022, month: 1, rainfall: 75, temperature: 16.5),
    MonthlyRainfallAndTemperature(year: 2022, month: 2, rainfall: 55, temperature: 17.3),
    MonthlyRainfallAndTemperature(year: 2022, month: 3, rainfall: 90, temperature: 18.9),
    MonthlyRainfallAndTemperature(year: 2022, month: 4, rainfall: 110, temperature: 20.8),
    MonthlyRainfallAndTemperature(year: 2022, month: 5, rainfall: 140, temperature: 23.5),
    MonthlyRainfallAndTemperature(year: 2022, month: 6, rainfall: 190, temperature: 26.9),
    MonthlyRainfallAndTemperature(year: 2022, month: 7, rainfall: 220, temperature: 29.3),
    MonthlyRainfallAndTemperature(year: 2022, month: 8, rainfall: 170, temperature: 28.4),
    MonthlyRainfallAndTemperature(year: 2022, month: 9, rainfall: 115, temperature: 26.4),
    MonthlyRainfallAndTemperature(year: 2022, month: 10, rainfall: 105, temperature: 22.7),
    MonthlyRainfallAndTemperature(year: 2022, month: 11, rainfall: 100, temperature: 19.9),
    MonthlyRainfallAndTemperature(year: 2022, month: 12, rainfall: 95, temperature: 17.8),

    // 2023 年
    MonthlyRainfallAndTemperature(year: 2023, month: 1, rainfall: 78, temperature: 16.7),
    MonthlyRainfallAndTemperature(year: 2023, month: 2, rainfall: 68, temperature: 17.5),
    MonthlyRainfallAndTemperature(year: 2023, month: 3, rainfall: 100, temperature: 19.3),
    MonthlyRainfallAndTemperature(year: 2023, month: 4, rainfall: 115, temperature: 21.2),
    MonthlyRainfallAndTemperature(year: 2023, month: 5, rainfall: 130, temperature: 24.0),
    MonthlyRainfallAndTemperature(year: 2023, month: 6, rainfall: 185, temperature: 27.0),
    MonthlyRainfallAndTemperature(year: 2023, month: 7, rainfall: 240, temperature: 29.5),
    MonthlyRainfallAndTemperature(year: 2023, month: 8, rainfall: 175, temperature: 29.0),
    MonthlyRainfallAndTemperature(year: 2023, month: 9, rainfall: 125, temperature: 26.7),
    MonthlyRainfallAndTemperature(year: 2023, month: 10, rainfall: 95, temperature: 23.1),
    MonthlyRainfallAndTemperature(year: 2023, month: 11, rainfall: 110, temperature: 19.8),
    MonthlyRainfallAndTemperature(year: 2023, month: 12, rainfall: 90, temperature: 17.5)
]
