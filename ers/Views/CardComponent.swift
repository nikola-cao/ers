//
//  CardComponent.swift
//  ers
//
//  Created by Patrick Guo on 10/1/25.
//

import SwiftUI

struct CardComponent: View {
    var suit: Suit
    var rank: Rank
    
    var body: some View {
        HStack {
            indexComponent
            Spacer()
            pipComponent
            Spacer()
            indexComponent
                .rotationEffect(.degrees(180))
        }
        .foregroundStyle(suit == Suit.club || suit == Suit.spade ? .black : .red)
        .frame(width: 300, height: 420) // max size of card based on smallest screen size (iphone se)
        .padding(10)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
        )
    }
    
    // shows suit and rank, used to flank left and right side of card
    private var indexComponent: some View {
        VStack(spacing: 0) {
            Text(rank.display)
                .fontWidth(.condensed)
                .font(.system(size: 52))
            Image(systemName: suit.rawValue)
                .resizable()
                .frame(width: 24, height: 24)
                .padding(.leading, 6)
                .padding(.trailing, 6)
            Spacer()
        }
    }
    
    // Center graphic showing <rank> number of <suit>
    private var pipComponent: some View {
        HStack { // ranks 2-10
            if rank.rawValue <= 10 {
                // (base) leftmost column
                VStack {
                    pipSuitImage
                    Spacer()
                    if rank.rawValue == 3 || rank.rawValue >= 6 {
                        pipSuitImage
                        Spacer()
                    }
                    if rank.rawValue >= 9 {
                        pipSuitImage
                            .rotationEffect(.degrees(180))
                        Spacer()
                    }
                    pipSuitImage
                        .rotationEffect(.degrees(180))
                }
                // center column
                if rank.rawValue == 5 || rank.rawValue >= 7 {
                    Spacer()
                    VStack {
                        Spacer()
                        pipSuitImage
                        if rank.rawValue == 7 {
                            Spacer()
                            Spacer()
                        }
                        if rank.rawValue == 10 {
                            Spacer()
                        }
                        if rank.rawValue == 8 || rank.rawValue == 10 {
                            Spacer()
                            pipSuitImage
                                .rotationEffect(.degrees(180))
                        }
                        Spacer()
                    }
                }
                // rightmost column
                if rank.rawValue >= 4 {
                    Spacer()
                    VStack {
                        pipSuitImage
                        Spacer()
                        if rank.rawValue >= 6 {
                            pipSuitImage
                            Spacer()
                        }
                        if rank.rawValue >= 9 {
                            pipSuitImage
                                .rotationEffect(.degrees(180))
                            Spacer()
                        }
                        pipSuitImage
                            .rotationEffect(.degrees(180))
                    }
                }
            } else if rank.rawValue == 14 { // rank ace
                pipSuitImage
            } else { // ranks J-K artwork
                Rectangle()
            }
        }
        .padding(.top, 30)
        .padding(.bottom, 30)
    }
    
    private var pipSuitImage: some View {
        Image(systemName: suit.rawValue)
            .resizable()
            .frame(width: 60, height: 68)
    }
}



#Preview {
    CardComponent(suit: .heart, rank: .ten)
}
