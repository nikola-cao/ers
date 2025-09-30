//
//  Model.swift
//  ers
//
//  Created by Patrick Guo on 9/29/25.
//

import Foundation

enum Suit: String, CaseIterable {
    case spades = "♠️"
    case hearts = "♥️"
    case diamonds = "♦️"
    case clubs = "♣️"
}

enum Rank: Int, CaseIterable {
    case two = 2
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case jack
    case queen
    case king
    case ace
}

struct Card: Identifiable, Equatable {
    let id = UUID()
    let rank: Rank
    let suit: Suit
}

class Hand: Identifiable {
    let id = UUID()
    var cards = [Card]()
}
