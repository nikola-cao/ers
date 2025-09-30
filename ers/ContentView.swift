//
//  ContentView.swift
//  ers
//
//  Created by Nikola Cao on 9/27/25.
//

import SwiftUI

struct ContentView: View {
    @State var mcManager: MCManager = MCManager()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
