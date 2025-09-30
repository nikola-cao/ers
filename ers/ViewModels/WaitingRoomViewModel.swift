//
//  WaitingRoomViewModel.swift
//  ers
//
//  Created by Patrick Guo on 9/30/25.
//

import Foundation

extension WaitingRoomView {
    @Observable
    class ViewModel {
        // placeholder values bc this class needs an initializer with MCSession
        var roomId: String = "ABCD"
        var playerCount: Int = 1
        var playerId: [String]?
        
        func testIncreasePlayerCount() {
            playerCount += 1
        }
    }
}
