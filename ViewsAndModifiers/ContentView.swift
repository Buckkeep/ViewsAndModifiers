//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Neeta Buhecha on 02/05/2024.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    
    var body: some View {
        Text("Hello World")
            .titleStyle()
    }
}

#Preview {
    ContentView()
}
