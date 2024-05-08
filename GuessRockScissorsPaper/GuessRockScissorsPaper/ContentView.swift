//
//  ContentView.swift
//  GuessRockScissorsPaper
//
//  Created by Groo on 5/8/24.
//

import SwiftUI

struct ContentView: View {
    let choices = ["Rock", "Scissors", "Paper"]
    let choicesEmoji = ["✊", "✌️", "✋"]
    let situations = ["WIN", "LOSE"]
    @State var pickedChoice = Int.random(in: 0...2)
    @State var pickedSituation = Int.random(in: 0...1)
    @State var answer = ""
    var body: some View {
        VStack(spacing: 30) {
            Text(choicesEmoji[pickedChoice])
                .font(.system(size: 200))
            Text("What is your choice to \(situations[pickedSituation])?")
                .font(.title)
                .fontWeight(.bold)
            HStack {
                ForEach(0..<3) { choice in
                    Button(action: {
                        print("\(choice) is clicked")
                    }, label: {
                        Text(choicesEmoji[choice])
                            .font(.system(size: 100))
                    })
                }
            }
        }
    }
    
    func guessAnswer(selectedChoice: Int) {
        if pickedSituation == 0 {
            if pickedChoice == 0 && selectedChoice == 2 || pickedChoice == 1 && selectedChoice == 0 || pickedChoice == 2 && selectedChoice == 1 {
                answer = "Correct"
            } else {
                answer = "Wrong"
            }
        } else {
            if pickedChoice == 0 && selectedChoice == 1 || pickedChoice == 1 && selectedChoice == 2 || pickedChoice == 2 && selectedChoice == 0 {
                answer = "Correct"
            } else {
                answer = "Wrong"
            }
        }
    }
}

#Preview {
    ContentView()
}
