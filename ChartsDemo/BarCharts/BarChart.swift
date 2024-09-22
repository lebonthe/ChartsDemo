//
//  BarChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/14.
//

import SwiftUI
import Charts

// 1. BarChart data
var toyShapeThreeBarData: [ToyShape] = [
    ToyShape(color: "Green", type: "Cube", count: 5),
    ToyShape(color: "Green", type: "Sphere", count: 1),
    ToyShape(color: "Green", type: "Pyramid", count: 3)
]

struct BarChart: View {
    var body: some View {
        Chart() {
            BarMark(
                x: .value("Shape Type", toyShapeThreeBarData[0].type),
                y: .value("Total Count", toyShapeThreeBarData[0].count),
                                width: MarkDimension(floatLiteral: 30) // 2. bar 寬度
            )
            BarMark(
                x: .value("Shape Type", toyShapeThreeBarData[1].type),
                y: .value("Total Count", toyShapeThreeBarData[1].count),
                                width: MarkDimension(floatLiteral: 30) // 2. bar 寬度
            )
            BarMark(
                x: .value("Shape Type", toyShapeThreeBarData[2].type),
                y: .value("Total Count", toyShapeThreeBarData[2].count)/*,*/
                //                width: MarkDimension(floatLiteral: 30) // 2. bar 寬度
            )
            BarMark(
                x: .value("Shape Type", toyShapeThreeBarData[2].type),
                y: .value("Total Count", toyShapeThreeBarData[2].count)/*,*/
                //                width: MarkDimension(floatLiteral: 30) // 2. bar 寬度
            )
        }
        .position(CGPoint(x: 200.0, y: 100.0)) // 3. 圖表的位置(以中央對齊)
        .padding()
    }
}

#Preview {
    BarChart()
}
