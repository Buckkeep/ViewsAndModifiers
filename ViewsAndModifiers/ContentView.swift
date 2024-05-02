//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Neeta Buhecha on 02/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }

    var spells2: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }

    @ViewBuilder var spells3: some View {
        Text("Lumos")
        Text("Obliviate")
    }

    
    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
            spells
                .foregroundColor(.yellow)
            spells2
                .foregroundStyle(.cyan)
            spells3
                .foregroundStyle(.green)
        }

    }
}

#Preview {
    ContentView()
}
