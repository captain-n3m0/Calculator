//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Debjit Naskar on 06/05/23.
//
import SwiftUI

struct CalculatorView: View {
    @State private var input = ""
    
    var body: some View {
        VStack {
            TextField("0", text: $input)
                .font(.system(size: 64))
                .multilineTextAlignment(.trailing)
                .disabled(true)
            
            HStack(spacing: 16) {
                Button(action: { input += "7" }) {
                    Text("7")
                }
                Button(action: { input += "8" }) {
                    Text("8")
                }
                Button(action: { input += "9" }) {
                    Text("9")
                }
                Button(action: { input = "" }) {
                    Text("C")
                        .foregroundColor(.red)
                }
            }
            
            HStack(spacing: 16) {
                Button(action: { input += "4" }) {
                    Text("4")
                }
                Button(action: { input += "5" }) {
                    Text("5")
                }
                Button(action: { input += "6" }) {
                    Text("6")
                }
                Button(action: { input.removeLast() }) {
                    Image(systemName: "delete.left")
                        .foregroundColor(.red)
                }
            }
            
            HStack(spacing: 16) {
                Button(action: { input += "1" }) {
                    Text("1")
                }
                Button(action: { input += "2" }) {
                    Text("2")
                }
                Button(action: { input += "3" }) {
                    Text("3")
                }
                Button(action: { input += "+" }) {
                    Text("+")
                        .foregroundColor(.blue)
                }
            }
            
            HStack(spacing: 16) {
                Button(action: { input += "0" }) {
                    Text("0")
                }
                Button(action: { input += "." }) {
                    Text(".")
                }
                Button(action: { input += "-" }) {
                    Text("-")
                        .foregroundColor(.blue)
                }
                Button(action: { input += "*" }) {
                    Text("x")
                        .foregroundColor(.blue)
                }
            }
            
            HStack(spacing: 16) {
                Button(action: { input += "/" }) {
                    Text("/")
                        .foregroundColor(.blue)
                }
                Button(action: {
                    let expression = NSExpression(format: input)
                    let result = expression.expressionValue(with: nil, context: nil) as? Double ?? 0
                    input = String(result)
                }) {
                    Text("=")
                        .foregroundColor(.green)
                }
            }
        }
        .padding()
    }
}
