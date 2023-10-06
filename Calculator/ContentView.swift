//
//  ContentView.swift
//  Calculator
//
//  Created by Debjit Naskar on 06/05/23.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            CalculatorView()
                .navigationTitle("Calculator")
        }
    }
}
