//
//  IntervalBarChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import SwiftUI
import Charts

let jobData: [Job] = [
    Job(job: "Job 1", start: 0, end: 15, color: "orange"),
    Job(job: "Job 2", start: 5, end: 25, color: "red"),
    Job(job: "Job 1", start: 20, end: 35, color: "orange"),
    Job(job: "Job 1", start: 40, end: 55, color: "orange"),
    Job(job: "Job 2", start: 30, end: 60, color: "red"),
    Job(job: "Job 2", start: 30, end: 60, color: "red")
]

struct IntervalBarChart: View {
    var body: some View {
        Chart(jobData) {
            BarMark(
                // 1. 設定起始與結束的值
                xStart: .value("Start Time", $0.start),
                xEnd: .value("End Time", $0.end),
                y: .value("Job", $0.job)
            )
            .cornerRadius(10)// 3. 圓角
            .foregroundStyle(by: .value("color", $0.color)) // 2. 使用不同的顏色
        }
        .frame(height: 100)
        // 4. 更換顏色
        .chartForegroundStyleScale([
            "red": .red, "orange": .orange
        ])
        .padding()
    }
        
}

#Preview {
    IntervalBarChart()
}
