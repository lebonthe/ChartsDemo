//
//  MonthlyHoursOfTwoCitySunshine.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/22.
//

import Foundation

struct MonthlyHoursOfSunshine: Identifiable {
    var date: Date
    var hoursOfSunshine: Double
    var id = UUID()

    init(month: Int, hoursOfSunshine: Double) {
        let calendar = Calendar.autoupdatingCurrent
        self.date = calendar.date(from: DateComponents(year: 2020, month: month))!
        self.hoursOfSunshine = hoursOfSunshine
    }
}

var dataOfMonthlyHoursOfSunshine: [MonthlyHoursOfSunshine] = [
    MonthlyHoursOfSunshine(month: 1, hoursOfSunshine: 74),
    MonthlyHoursOfSunshine(month: 2, hoursOfSunshine: 99),
    MonthlyHoursOfSunshine(month: 3, hoursOfSunshine: 80),
    MonthlyHoursOfSunshine(month: 4, hoursOfSunshine: 85),
    MonthlyHoursOfSunshine(month: 5, hoursOfSunshine: 100),
    MonthlyHoursOfSunshine(month: 6, hoursOfSunshine: 114),
    MonthlyHoursOfSunshine(month: 7, hoursOfSunshine: 94),
    MonthlyHoursOfSunshine(month: 8, hoursOfSunshine: 87),
    MonthlyHoursOfSunshine(month: 9, hoursOfSunshine: 96),
    MonthlyHoursOfSunshine(month: 11, hoursOfSunshine: 56),
    MonthlyHoursOfSunshine(month: 12, hoursOfSunshine: 71),
    MonthlyHoursOfSunshine(month: 12, hoursOfSunshine: 62)
]
