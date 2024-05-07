//
//  ContentView.swift
//  rockpaperscissors
//
//  Created by Neeta Buhecha on 07/05/2024.
//

import SwiftUI

struct ContentView: View {
    let rock: String = "🗿"
    let paper: String = "🧻"
    let scissors: String = "✂️"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
