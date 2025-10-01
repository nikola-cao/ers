//
//  Model.swift
//  ers
//
//  Created by Patrick Guo on 9/29/25.
//

import Foundation

enum Suit: String, CaseIterable {
    case spade = "suit.spade.fill"
    case heart = "suit.heart.fill"
    case diamond = "suit.diamond.fill"
    case club = "suit.club.fill"
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
