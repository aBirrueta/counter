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
        VStack{
            Text("Are you sure you want to reset")
            HStack{
                Button("Confirm") {
                    dismiss()
                    count = 0
                    stringCount = "0"
                }
                Button("Cancel") {
                    dismiss()
                }
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
