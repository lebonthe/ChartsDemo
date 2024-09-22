//
//  DoubleLineChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import SwiftUI
import Charts

struct MonthlyHoursOfTwoCitySunshine: Identifiable {
    var city: String
    var date: Date
    var hoursOfSunshine: Double
    var id = UUID()

    init(city: String, month: Int, hoursOfSunshine: Double) {
        let calendar = Calendar.autoupdatingCurrent
        self.city = city
        self.date = calendar.date(from: DateComponents(year: 2020, month: month))!
        self.hoursOfSunshine = hoursOfSunshine
    }
}


var dataOfMonthlyHoursOfTwoCitySunshine: [MonthlyHoursOfTwoCitySunshine] = [
    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 1, hoursOfSunshine: 74),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 1, hoursOfSunshine: 96),

    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 2, hoursOfSunshine: 99),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 2, hoursOfSunshine: 70),
    
    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 3, hoursOfSunshine: 80),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 3, hoursOfSunshine: 80),

    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 4, hoursOfSunshine: 85),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 4, hoursOfSunshine: 116),
    
    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 5, hoursOfSunshine: 100),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 5, hoursOfSunshine: 120),
    
    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 6, hoursOfSunshine: 114),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 6, hoursOfSunshine: 110),

    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 7, hoursOfSunshine: 94),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 7, hoursOfSunshine: 100),
    
    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 8, hoursOfSunshine: 87),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 8, hoursOfSunshine: 99),
    
    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 9, hoursOfSunshine: 96),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 9, hoursOfSunshine: 130),
    
    MonthlyHoursOfTwoCitySunshine(city: "Seattle", month: 10, hoursOfSunshine: 60),
    MonthlyHoursOfTwoCitySunshine(city: "Cupertino", month: 10, hoursOfSunshine: 80),
]

struct DoubleLineChart: View {
    var body: some View {
        Chart(dataOfMonthlyHoursOfTwoCitySunshine) {
            LineMark(
                x: .value("Month", $0.date),
                y: .value("Hours of Sunshine", $0.hoursOfSunshine)
            )
            .foregroundStyle(by: .value("City", $0.city)) // 1. 以城市區分線條
            
            // 2. 數據點
//            .symbol(.cross)
            .symbol($0.city == "Seattle" ? .square : .circle)
            // 3. 虛線
            .lineStyle(StrokeStyle(lineWidth: 2, dash: [5,3]))
            
        }
         .chartLegend(position: .top, spacing: 10) // 3. 調整圖例
        .padding()
    }
}

#Preview {
    DoubleLineChart()
}
