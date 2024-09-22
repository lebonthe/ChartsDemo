//
//  PieChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/15.
//

import SwiftUI
import Charts

let pieData: [(name: String, sales: Int)] = [
    (name: "Green Tea", sales: 120),
    (name: "Black Tea", sales: 150),
    (name: "Milk Tea", sales: 180),
    (name: "Latte", sales: 90),
    (name: "Cappuccino", sales: 60),
    (name: "Smoothie", sales: 110)
]

struct PieChart: View {
    let pieData: [(name: String, sales: Int)]
    
    var body: some View {
        Chart(pieData, id: \.name) { element in
            SectorMark( // 1. 圓餅圖
                angle: .value("Sales", element.sales),
                angularInset: 1.5 // 3. 縫隙寬度
                
            )
            .cornerRadius(5.0) // 4. 修邊
            .foregroundStyle(by: .value("Name", element.name)) // 2. 分組依據
        }
        .padding()
    }
}

#Preview {
    PieChart(pieData: pieData)
}
