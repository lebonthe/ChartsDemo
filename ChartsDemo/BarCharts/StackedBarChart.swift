//
//  StackedBarChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import SwiftUI
import Charts


// StackedBarChart data
var toyShapeStackedBarData: [ToyShape] = [
    .init(color: "Green", type: "Cube", count: 2),
    .init(color: "Green", type: "Sphere", count: 1),
    .init(color: "Green", type: "Pyramid", count: 3),
    .init(color: "Purple", type: "Cube", count: 1),
    .init(color: "Purple", type: "Sphere", count: 1),
    .init(color: "Purple", type: "Pyramid", count: 1),
    .init(color: "Pink", type: "Cube", count: 1),
    .init(color: "Pink", type: "Sphere", count: 2),
    .init(color: "Pink", type: "Pyramid", count: 0),
    .init(color: "Yellow", type: "Cube", count: 1),
    .init(color: "Yellow", type: "Sphere", count: 1),
    .init(color: "Yellow", type: "Pyramid", count: 2)
]


struct StackedBarChart: View {
    var body: some View {                
//        Chart {
//            ForEach(toyShapeStackedBarData) { shape in
//                BarMark(
//                    x: .value("Shape Type", shape.type),
//                    // 5. 柱狀圖轉方向為長條圖 
////                    x: .value("Total Count", shape.count),
//                    y: .value("Total Count", shape.count)
//                    // 5-2. 
////                    y: .value("Shape Type", shape.type)
//                )
//                //                // 4. 設定 bar 的顏色
//                .foregroundStyle(by: .value("Shape Color", shape.color))
//                //                // -------
//            }
//        }
//                // 6. 客制顏色
//                .chartForegroundStyleScale([
//                    "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
//                ])
//                .padding()
                // ---------------
////                 第二種寫法
        Chart(toyShapeStackedBarData)  {
            BarMark(
                x: .value("Shape Type", $0.type), // 5. 柱狀圖轉方向為長條圖
                y: .value("Total Count", $0.count)
            )
            .foregroundStyle(by: .value("Shape Color", $0.color))
        }
        .chartForegroundStyleScale([
            "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
        ])
        .padding()
        // ---------------
    }
}

#Preview {
    StackedBarChart()
}
