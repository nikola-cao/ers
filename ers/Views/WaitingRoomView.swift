//
//  WaitingRoomView.swift
//  ers
//
//  Created by Patrick Guo on 9/29/25.
//

import SwiftUI

struct WaitingRoomView: View {
    var isHost: Bool
    
    @State private var vm = ViewModel()
    @State private var isShowingSheet = false
    @State private var isDoubleEnabled = true
    @State private var isSandwichEnabled = true
    @State private var isMarriageEnabled = true

    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
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
                if isHost {
                    NavigationLink(vm.playerCount < 2 ? "Not Enough Players" : "Start Game") {
                        GameView()
                    }
                    .disabled(vm.playerCount < 2)
                    .buttonStyle(.borderedProminent)
                }
            }
            .navigationTitle("Waiting Room")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar() {
                if isHost {
                    Button("", systemImage: "gearshape.fill") {
                        isShowingSheet.toggle()
                    }
                    .sheet(isPresented: $isShowingSheet) {
                        settingsSheet
                    }
                }
            }
        }
    }
    
    
    private var settingsSheet: some View {
        NavigationStack {
            List {
                HStack {
                    Text("Double")
                    Spacer()
                    Toggle("", isOn: $isDoubleEnabled)
                }
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Toggle("", isOn: $isSandwichEnabled)
                }
                HStack {
                    Text("Marriage")
                    Spacer()
                    Toggle("", isOn: $isMarriageEnabled)
                }
            }
            .navigationTitle("Game Rules")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

}

#Preview {
    WaitingRoomView(isHost: true)
}
