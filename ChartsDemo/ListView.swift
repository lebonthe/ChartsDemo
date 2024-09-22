//
//  ListView.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/15.
//

import SwiftUI

struct ListView: View {
    @State private var path: [ChartType] = []

    var body: some View {

        NavigationStack(path: $path) {
            HStack {
                Text("iOS 16.0+")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.bottom)
            .padding(.leading)
            
            List {
                Section(header: Text("Bar Chart")) {
                    NavigationLink("Bar Chart", value: ChartType.bar)
                    NavigationLink("Stacked Bar Chart", value: ChartType.stackedBar)
                    NavigationLink("Grouped Bar Chart", value: ChartType.groupedBarChart)
                    NavigationLink("1D Bar Chart", value: ChartType.oneDBar)
                    NavigationLink("Interval Bar Chart", value: ChartType.intervalBar)
                    
                }
                Section(header: Text("Line Chart")) {
                    NavigationLink("Line Chart", value: ChartType.line)
                    NavigationLink("Double Line Chart", value: ChartType.doubleLine)
                }
                Section(header: Text("Pie Chart - iOS 17.0+")) {
                    NavigationLink("Pie Chart", value: ChartType.pie)
                    NavigationLink("Donut Chart", value: ChartType.donut)
                }
                Section(header: Text("Others")) {
                    NavigationLink("Combination Chart", value: ChartType.combination)
                    NavigationLink("Zoomable Chart", value: ChartType.Zoomable)
                }
            }
            .navigationDestination(for: ChartType.self) { chartType in
                ChartView(chartType: chartType)
                
            }
            .navigationTitle("Charts")
        }
    }
}

#Preview {
    ListView()
}
