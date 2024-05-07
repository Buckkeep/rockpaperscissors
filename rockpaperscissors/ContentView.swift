//
//  ContentView.swift
//  rockpaperscissors
//
//  Created by Neeta Buhecha on 07/05/2024.
//

import SwiftUI

struct ContentView: View {
    let newArray = [Image(systemName: "scissors"), Image(systemName: "doc"), Image(systemName: "cloud")]
    let options = ["🗿", "🧻", "✂️"]
    
    @State private var currentChoice = Int.random(in: 0...2)
    @State private var shouldWin: Bool = Bool.random()
    
    @State private var userScore = 0
    @State private var rounds = 0
    
    var body: some View {
        NavigationStack {
                VStack {
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
                                convertUserChoice(answer)
                            } label: {
                                Text("\(answer)")
                            }
                        }
                        
                    }
                    Text("Your score is \(userScore) out of \(rounds) rounds")
                }
                .navigationTitle("RawkPaperScissors")
        }
        .padding()
    }
    
    func convertUserChoice(_ answer: String) -> Int {
//        var selectedIndex: Int
//        for option in options {
//            if option == answer {
//                selectedIndex = options.index(after: answer)
//                        }
//                    }
//        return selectedIndex
        return 0
    }
    
//    func evaluateUserChoice(_ answer: Int) {
//        // if you need to win
//        // Can this be condensed to ternary?
//        if shouldWin {
//            // and you win
//            if answer > currentChoice {
//                userScore += 1
//            }
//            // and you lose
//            // and you draw
//        } else {
//            // and you win
//            // and you lose
//            // and you draw
//        }
//        
//        // if you need to lose
//        
//        // if you chose a draw
//        shouldWin.toggle()
//        rounds += 1
//        return
//    }
}

#Preview {
    ContentView()
}
