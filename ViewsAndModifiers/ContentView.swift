//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Neeta Buhecha on 02/05/2024.
//

import SwiftUI

struct Prominent: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func prominentStyle() -> some View {
        modifier(Prominent())
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) {row in
                HStack {
                    ForEach(0..<columns, id: \.self) {column in
                    content(row, column)}
                }
            }
        }
    }
}

struct ContentView: View {
    
    var body: some View {
        GridStack(rows: 4, columns: 4) {
            row, col in Text("R\(row) C\(col)")
        }
        .prominentStyle()
    }
}

#Preview {
    ContentView()
}
