//
//  ZoomableChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/22.
//

import SwiftUI
import Charts

struct ZoomableChart: View {
    @State private var scale: CGFloat = 1.0 // 1. 記錄縮放比例
    
    var body: some View {
        Chart(dataOfMonthlyHoursOfSunshine) {
            LineMark(
                x: .value("Month", $0.date),
                y: .value("Hours of Sunshine", $0.hoursOfSunshine)
            )
        }
        .chartScrollableAxes(.horizontal)
        .chartScrollableAxes(.vertical)
        .scaleEffect(scale) // 2. 縮放效果
        .gesture( // 3. 設定手勢
            MagnificationGesture()
                .onChanged { value in
                    scale = value
                }
        )
        .padding()
    }
}
   

#Preview {
    ZoomableChart()
}
