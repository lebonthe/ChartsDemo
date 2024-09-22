//
//  DonutChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import SwiftUI
import Charts

struct DonutChart: View {
    let pieData: [(name: String, sales: Int)]
    
    var body: some View {
        Chart(pieData, id: \.name) { element in
            SectorMark(
                angle: .value("Sales", element.sales),
                innerRadius: .ratio(0.618), // 1. ratio 內是甜甜圈的寬度
//                                innerRadius: .ratio(0.9), // 很窄
//                                innerRadius: .ratio(0.2), // 很寬
                angularInset: 1.5
                
            )
            .cornerRadius(5.0)
            .foregroundStyle(by: .value("Name", element.name))
        }
        .padding()
        // 2. 在中央放文字
        .chartBackground { chartProxy in
            GeometryReader { geometry in
                let frame = geometry[chartProxy.plotFrame!]
                VStack {
                    Text("Drinks Sold Types Drinks Sold Types")
                        .font(.callout)
                        .foregroundStyle(.primary)
                }
                .position(x: frame.midX, y: frame.midY)
            }
            
        }
//         --------
    }
}

#Preview {
    DonutChart(pieData: pieData)
}

