//
//  ContentView.swift
//  Fructus
//
//  Created by 小野寺祥吾 on 2023/09/16.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(fruits.shuffled()) { fruit in
                        NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                            FruitRowView(fruit: fruit)
                                .padding(.vertical, 4)
                        }
                    }
                }
                .navigationTitle("Fruits")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
