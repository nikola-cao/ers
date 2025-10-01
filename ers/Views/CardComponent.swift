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
        .overlay( // green is just for debugging for now
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.green, lineWidth: 1)
        )
    }
    
    // shows suit and rank, used to flank left and right side of card
    private var indexComponent: some View {
        VStack {
            Image(systemName: suit.rawValue)
                .font(.title)
                .padding(.top, 4)
            Text("X")
                .font(.title)
                .fontDesign(.monospaced)
                .bold()
            Spacer()
        }
    }
    
    // Center graphic showing <rank> number of <suit>
    private var pipComponent: some View {
        
        VStack {
            switch rank {
            case .two:
                Image(systemName: suit.rawValue)
                    .font(.title)
    //        case .three:
    //            Image(systemName: suit.rawValue)
    //        case .four:
    //            Image(systemName: suit.rawValue)
    //        case .five:
    //            Image(systemName: suit.rawValue)
    //        case .six:
    //            Image(systemName: suit.rawValue)
    //        case .seven:
    //            Image(systemName: suit.rawValue)
    //        case .eight:
    //            Image(systemName: suit.rawValue)
    //        case .nine:
    //            Image(systemName: suit.rawValue)
    //        case .ten:
    //            Image(systemName: suit.rawValue)
    //        case .jack:
    //            Image(systemName: suit.rawValue)
    //        case .queen:
    //            Image(systemName: suit.rawValue)
    //        case .king:
    //            Image(systemName: suit.rawValue)
    //        case .ace:
    //            Image(systemName: suit.rawValue)
            default:
                Text("default")
                    .font(.title)
            }
        }
    }
}



#Preview {
    CardComponent(suit: .club, rank: .ace)
}
