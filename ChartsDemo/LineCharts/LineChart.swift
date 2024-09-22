//
//  LineChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/15.
//

import SwiftUI
import Charts



struct LineChart: View {
    
    var body: some View {
        Chart(dataOfMonthlyHoursOfSunshine) {
            LineMark( // 1. 折線圖
                x: .value("Month", $0.date),
                y: .value("Hours of Sunshine", $0.hoursOfSunshine)
            )
            // 2. 插值方法
            .interpolationMethod(.linear) // 預設，直線連接數據點
//                            .interpolationMethod(.catmullRom) // 平滑曲線
//                            .interpolationMethod(.stepStart) // 每個數據點之間的線條以階梯方式前進，步進開始於數據點
//                            .interpolationMethod(.stepEnd) // 步進結束於數據點
//                            .interpolationMethod(.stepCenter) // 步進居中於數據點
            .lineStyle(.init(lineWidth: 5.0)) // 3. 線寬

        }
        .padding()
    }
}

#Preview {
    LineChart()
}
