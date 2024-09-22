//
//  CombinationChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import SwiftUI
import Charts

struct CombinationChart: View {
    let data: [MonthlyRainfallAndTemperature]
    
    var body: some View {
        Chart {
            ForEach(data, id: \.self) {
                // 柱狀圖：雨量
                BarMark(
                    x: .value("Month", $0.date),
                    y: .value("Rainfall (mm)", $0.rainfall)
                )
                .foregroundStyle(.blue)
            }
            ForEach(data, id: \.self) {
                // 折線圖：氣溫
                LineMark(
                    x: .value("Month", $0.date),
                    y: .value("Temperature (°C)", $0.temperature)
                )
                .foregroundStyle(.red)
            }
            .lineStyle(StrokeStyle(lineWidth: 2))
        }
        .chartScrollableAxes(.horizontal) // 1. 可水平捲動
                .chartXVisibleDomain(length: 3600 * 24 * 30 * 12)   // 2. 螢幕可視範圍為 12 個月
                            .frame(height: 400) // 設置圖表高度
//        // 3. 指定 X 軸顯示的方式
        .chartXAxis {
            AxisMarks(values: .stride(by: .month, count: 6)) { // 軸上的標記
                AxisGridLine() // 在 X 軸的標記點上繪製網格線
                AxisTick() // 在 X 軸上每個標記點處繪製刻度
                AxisValueLabel(format: .dateTime.year().month(.abbreviated), centered: true)
            }
        }
        // --------
        .padding()
    }
}

#Preview {
    CombinationChart(data: rainfallAndTemperatureData)
}
