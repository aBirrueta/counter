//
//  ContentView.swift
//  counter
//
//  Created by Alejandro Birrueta on 12/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var countString = "0"
    @State var showingReset = false
    var body: some View {
        VStack {
            Text(countString)
                .fontWeight(.bold)
                .font(.system(size: 50))
            Button("+1") {
                count += 1
                countString = String(count)
            }
            .frame(width: 100, height: 100)
            .buttonStyle(.borderedProminent)
            Button("reset") {
                showingReset = true
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.buttonBorder)
        }
        .padding(.vertical, 200.0)
        .sheet(isPresented: $showingReset) {
            ResetScreenView(count: $count, stringCount: $countString)
        }
    }
}

#Preview {
    ContentView()
}
