//
//  ResetScreenView.swift
//  counter
//
//  Created by Alejandro Birrueta on 12/19/24.
//

import SwiftUI

struct ResetScreenView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var count: Int
    @Binding var stringCount: String
    var body: some View {
        VStack {
            Text("Are you sure you want to reset")
                .fontWeight(.bold)
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 0.0)
                .frame(width: 166.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/40.0)
            HStack {
                Button("Confirm") {
                    dismiss()
                    count = 0
                    stringCount = "0"
                }
                .buttonStyle(.borderedProminent)
                Button("Cancel") {
                    dismiss()
                }
                .buttonStyle(.bordered)
            }
        }
    }
}
#Preview {
    struct Preview: View {
        @State var count = 0
        @State var stringCount = "0"
        var body: some View {
            ResetScreenView(count: $count, stringCount: $stringCount)
        }
    }
    return Preview()
}
