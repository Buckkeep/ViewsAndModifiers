//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Neeta Buhecha on 02/05/2024.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
    }
}

struct ContentView: View {
    
    var body: some View {
        VStack {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
        }

    }
}

#Preview {
    ContentView()
}
