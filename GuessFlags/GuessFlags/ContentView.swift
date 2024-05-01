//
//  ContentView.swift
//  GuessFlags
//
//  Created by Groo on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var selectedCountry = Int.random(in: 0...2)
    @State private var result = ""
    @State private var showingScore = false
    var body: some View {
        ZStack {
            Color.clear
                .background(.green.gradient)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                    Text(countries[selectedCountry])
                        .foregroundStyle(.white)
                }
                ForEach(0..<3) { number in
                    Button {
                        guessFlag(selectedAnswer: number)
                    } label: {
                        Image(countries[number])
                    }
                }
            }
        }
        .alert(result, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ...")
        }
    }
    
    func guessFlag(selectedAnswer: Int) {
        if selectedAnswer == selectedCountry {
            result = "Correct"
        } else {
            result = "Wrong"
        }
        showingScore = true
    }
    func askQuestion() {
        countries.shuffle()
        selectedCountry = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
