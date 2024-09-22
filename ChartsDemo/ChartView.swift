//
//  ChartView.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/15.
//

import SwiftUI

enum ChartType: Hashable {
    case bar
    case stackedBar
    case groupedBarChart
    case oneDBar
    case intervalBar
    case line
    case doubleLine
    case pie
    case donut
    case combination
    case Zoomable
}

struct ChartView: View {
    var chartType: ChartType
    
    var body: some View {
        VStack {
            switch chartType {
            case .bar:
                Text("Bar Chart")
                BarChart()
            case .stackedBar:
                Text("Stacked Bar Chart")
                StackedBarChart()
            case .groupedBarChart:
                Text("Grouped Bar Chart")
                GroupedBarChart()
            case .oneDBar:
                Text("1D Bar Chart")
                OneDBarChart()
            case .intervalBar:
                Text("Interval Bar Chart")
                IntervalBarChart()
            case .line:
                Text("Line Chart")
                LineChart()
            case .doubleLine:
                Text("Double Chart")
                DoubleLineChart()
            case .pie:
                Text("Pie Chart")
                PieChart(pieData: pieData) 
            case .donut:
                Text("Donut Chart")
                DonutChart(pieData: pieData)
            case .combination:
                Text("Combination Chart")
                CombinationChart(data: rainfallAndTemperatureData)
            case .Zoomable:
                Text("Zoomable Chart")
                ZoomableChart()
            }
        }
        .font(.largeTitle)
    }
}
