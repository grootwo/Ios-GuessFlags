//
//  ContentView.swift
//  GuessFlags
//
//  Created by Groo on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.primary
                Color.secondary
            }
            Text("This is a Text")
                .padding(30)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
