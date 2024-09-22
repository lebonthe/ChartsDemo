//
//  OneDBarChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import SwiftUI
import Charts

struct OneDBarChart: View {
    var body: some View {

        // 1. 1D Bar Chart
        Chart(toyShapeStackedBarData) {
            BarMark(
                x: .value("Total Count", $0.count),
                stacking: .normalized // 3. 總長度為 100%
            )
            .foregroundStyle(by: .value("Shape Color", $0.color)) // 2. 照顏色排列
        }
        .chartForegroundStyleScale([
                    "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
                ])
        .frame(height: 70)
        .padding()
        // -----------
    }
}

#Preview {
    OneDBarChart()
}
