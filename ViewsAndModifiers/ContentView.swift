//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Neeta Buhecha on 02/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(useRedText ? .green : .red)
            Button("Hello, world!") {
                useRedText.toggle()
            }
            .foregroundStyle(useRedText ? .red : .green)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
