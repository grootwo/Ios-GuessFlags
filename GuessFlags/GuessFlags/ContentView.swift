//
//  ContentView.swift
//  GuessFlags
//
//  Created by Groo on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        VStack(spacing: 20) {
            Button("Show Alert") {
                showingAlert = true
            }
            .buttonStyle(.bordered)
        }
        .tint(.green)
        .alert("Alert Message", isPresented: $showingAlert) {
            Button("Back", role: .cancel) {}
            Button("Delete", role: .destructive) {}
        } message: {
            Text("This is message for alert")
        }
    }
}

#Preview {
    ContentView()
}
