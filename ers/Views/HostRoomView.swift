//
//  HostRoomView.swift
//  ers
//
//  Created by Patrick Guo on 9/29/25.
//

import SwiftUI

struct HostRoomView: View {
    @State private var vm = ViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("Room Code")
                        .font(.subheadline)
                    Text(vm.roomId)
                        .font(.largeTitle)
                }
                VStack {
                    Text("\(vm.playerCount)/5 players")
                    Button("Increment Player Count") {
                        vm.testIncreasePlayerCount()
                    }
                }
                NavigationLink(vm.playerCount < 2 ? "Not Enough Players" : "Start Game") {
                    GameView()
                }
                .disabled(vm.playerCount < 2)
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Host Room")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
    }
}

#Preview {
    HostRoomView()
}
