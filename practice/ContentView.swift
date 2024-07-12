//
//  ContentView.swift
//  practice
//
//  Created by  Isa Maldonado on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textTitle = "What is your name"
    @State private var name = ""
    var body: some View {
        VStack {
            Text("What is your name")
            
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color .gray, width: 1)
            
            Button("Submit name") {
                textTitle = "Welcome, \(name)!!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent).tint(.pink)
        }

    }
}

#Preview {
    ContentView()
}
