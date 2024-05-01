//
//  ContentView.swift
//  GuessFlags
//
//  Created by Groo on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    var selectedCountry = Int.random(in: 0...2)
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
                        
                    } label: {
                        Image(countries[number].lowercased())
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
