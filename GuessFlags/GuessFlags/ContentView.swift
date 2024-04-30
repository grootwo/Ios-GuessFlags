//
//  ContentView.swift
//  GuessFlags
//
//  Created by Groo on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Text("This is 2")
            VStack(alignment: .leading) {
                Text("This is 0")
                Text("This is 0")
                HStack(alignment: .center) {
                    Text("This is 1")
                    Text("This is 1")
                    Text("This is 1")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
