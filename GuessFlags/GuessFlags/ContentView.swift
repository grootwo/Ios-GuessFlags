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
                Text("Score: ...")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding()
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
