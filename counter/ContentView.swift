//
//  ContentView.swift
//  counter
//
//  Created by Alejandro Birrueta on 12/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack(spacing: 90) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Button("Button") {
                    print("hello world")
                }
                .buttonStyle(.bordered)
            }
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
