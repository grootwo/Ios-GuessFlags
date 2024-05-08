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
    @State var selectedChoice = Int.random(in: 0...2)
    var body: some View {
        VStack {
            Text(choicesEmoji[selectedChoice])
                .font(.system(size: 200))
            Text("What is your choice to win?")
            HStack {
                ForEach(choicesEmoji, id: \.self) { choice in
                    Button(action: {
                        print("\(choice) is clicked")
                    }, label: {
                        Text(choice)
                            .font(.system(size: 100))
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
