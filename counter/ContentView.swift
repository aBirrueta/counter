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
    var body: some View {
        VStack {
            Text(countString)
            Button("+1") {
                count += 1
                countString = String(count)
            }
            .frame(width: 100, height: 100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
