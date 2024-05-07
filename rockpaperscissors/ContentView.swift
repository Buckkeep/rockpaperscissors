//
//  ContentView.swift
//  rockpaperscissors
//
//  Created by Neeta Buhecha on 07/05/2024.
//

import SwiftUI

struct ContentView: View {
    let options = ["🗿", "🧻", "✂️"]
    
    @State private var currentChoice = Int.random(in: 0...2)
    @State private var shouldWin: Bool = Bool.random()
    
    var body: some View {
        NavigationStack {
                Form {
                    Section("The game chose") {
                        Text(options[currentChoice])
                    }
                    Section("You need to") {
                        shouldWin ? Text("Win") : Text("Lose")
                    }
                    Section("What do you choose?") {
                        
                        ForEach(options, id: \.self) {
                            answer in
                            Button {
                                userChoice(answer)
                            } label: {
                                Text("\(answer)")
                            }
                        }
                        
//                        Picker("Make your selection:", selection: $currentChoice) {
//                            ForEach(options, id: \.self) {
//                                Text("\($0)")
//                            }
//                            
//                    }
//                        .pickerStyle(.segmented)
                    }
                }
                .navigationTitle("RawkPaperScissors")
        }
        .padding()
    }
    
    func userChoice(_ answer: String) {
        // if you need to win
        if shouldWin {
            // and you win
        } else if shouldWin {
            // and you lose
        } else {
            // you draw
        }
        
        // if you need to lose
        
        // if you chose a draw
        
        return
    }
}

#Preview {
    ContentView()
}
