//
//  ContentView.swift
//  GuessFlags
//
//  Created by Groo on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LinearGradient(stops: [
                Gradient.Stop(color: .white, location: 0.2),
                Gradient.Stop(color: .blue, location: 0.4)
            ], startPoint: .top, endPoint: .bottom)
            LinearGradient(stops: [
                .init(color: .red, location: 0.2),
                .init(color: .cyan, location: 0.8)
            ], startPoint: .leading, endPoint: .trailing)
            RadialGradient(colors: [.brown, .orange, .mint], center: .center, startRadius: 20, endRadius: 150)
            AngularGradient(colors: [.red, .yellow, .blue, .red], center: .center)
            Text("These are gradient")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .foregroundStyle(.white)
                .background(.green.gradient)
        }
    }
}

#Preview {
    ContentView()
}
