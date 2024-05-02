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
            Text("Gryffindor")
                .font(.largeTitle)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
            
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
