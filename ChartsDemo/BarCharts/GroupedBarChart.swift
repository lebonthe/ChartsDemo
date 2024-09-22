//
//  GroupedBarChart.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import SwiftUI
import Charts

struct CompanyData: Identifiable {
    let id = UUID() // 1. 使用 UUID 來保證唯一性
    let year: String
    let company: String
    let value: Int
}

struct GroupedBarChart: View {
    
    let data = [
        CompanyData(year: "1990", company: "Company A", value: 30),
        CompanyData(year: "1990", company: "Company B", value: 50),
        CompanyData(year: "1990", company: "Company C", value: 20),
        CompanyData(year: "1991", company: "Company A", value: 40),
        CompanyData(year: "1991", company: "Company B", value: 60),
        CompanyData(year: "1991", company: "Company C", value: 30),
        CompanyData(year: "1992", company: "Company A", value: 50),
        CompanyData(year: "1992", company: "Company B", value: 40),
        CompanyData(year: "1992", company: "Company C", value: 70)
    ]

    var body: some View {
        Chart {
            ForEach(data) { item in
                BarMark(
                    x: .value("Year", item.year),
                    y: .value("Value", item.value)
                )
                .position(by: .value("Company", item.company)) // 2. 讓不同公司橫向並列
                .foregroundStyle(by: .value("Company", item.company)) // 3. 根據公司設置顏色
            }
        }
        .chartForegroundStyleScale([
            "Company A": .green,
            "Company B": .blue,
            "Company C": .yellow
        ])
        .frame(height: 300) // 4. 指定高度
        .padding()
    }
}

#Preview {
    GroupedBarChart()
}
