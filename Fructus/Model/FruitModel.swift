//
//  FruitModel.swift
//  Fructus
//
//  Created by 小野寺祥吾 on 2023/09/16.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
