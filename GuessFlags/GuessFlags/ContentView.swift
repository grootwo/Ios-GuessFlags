//
//  ContentView.swift
//  GuessFlags
//
//  Created by Groo on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("default") { }
                .buttonStyle(.automatic)
            Button("plain") { }
                .buttonStyle(.plain)
            Button("bordered") { }
                .buttonStyle(.bordered)
                .tint(.purple)
            Button("borderedProminent") { }
                .buttonStyle(.borderedProminent)
            Button("borderless") { }
                .buttonStyle(.borderless)
            Button(action: {}, label: {
                Text("Custom Button")
                    .padding(20)
                    .foregroundColor(.white)
                    .background(.orange)
            })
            Button("Save", systemImage: "square.and.arrow.down") {}
                .padding(20)
                .foregroundColor(.white)
                .background(.orange)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Label("record", systemImage: "mic.circle.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(20)
                    .foregroundColor(.white)
                    .background(.orange)
            })
        }
        .tint(.green)
    }
}

#Preview {
    ContentView()
}
