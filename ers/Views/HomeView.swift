//
//  HomeView.swift
//  ers
//
//  Created by Patrick Guo on 9/29/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Host Game") {
                    WaitingRoomView(isHost: true)
                }
                .buttonStyle(.borderedProminent)
                NavigationLink("Join Game") {
                    PlayerRoomView()
                }
                .buttonStyle(.bordered)
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
