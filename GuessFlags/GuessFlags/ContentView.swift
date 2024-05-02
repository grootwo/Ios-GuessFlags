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
    @State private var score = 0
    @State private var questionStatus = 1
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: .cyan, location: 0.3),
                .init(color: .indigo, location: 0.6),
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[selectedCountry])
                            .font(.largeTitle.weight(.bold))
                    }
                    ForEach(0..<3) { number in
                        Button {
                            guessFlag(selectedAnswer: number)
                        } label: {
                            Image(countries[number])
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.vertical, 30)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                Spacer()
                Text("Score: \(score)")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                Spacer()
                Text("\(questionStatus)/8 questions")
                    .font(.title.bold())
                    .foregroundStyle(.white)
            }
            .padding()
        }
        .alert(result, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            if questionStatus == 8 {
                Text("Your total score is \(score)")
            } else {
                Text("Your score is \(score)")
            }
        }
    }
    
    func guessFlag(selectedAnswer: Int) {
        if selectedAnswer == selectedCountry {
            result = "Correct! It's the flag of \(countries[selectedAnswer])"
            score += 10
        } else {
            result = "Wrong! That's the flag of \(countries[selectedAnswer])"
            score -= 10
        }
        showingScore = true
    }
    func askQuestion() {
        countries.shuffle()
        selectedCountry = Int.random(in: 0...2)
        questionStatus += 1
        if questionStatus == 9 {
            questionStatus = 1
            score = 0
        }
    }
}

#Preview {
    ContentView()
}
