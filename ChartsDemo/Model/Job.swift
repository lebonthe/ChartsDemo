//
//  Job.swift
//  ChartsDemo
//
//  Created by S485856 on 2024/9/16.
//

import Foundation

struct Job: Identifiable {
    let job: String
    let start: Double
    let end: Double
    let color: String
    let id = UUID()
}



