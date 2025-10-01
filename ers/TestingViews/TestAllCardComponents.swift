//
//  TestAllCardComponents.swift
//  ers
//
//  Created by Patrick Guo on 10/1/25.
//

import SwiftUI

struct TestAllCardComponents: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                ScrollView(.horizontal) {
                    ForEach(Suit.allCases, id: \.self) { suit in
                        HStack(spacing: 12) {
                            ForEach(Rank.allCases, id: \.self) { rank in
                                CardComponent(suit: suit, rank: rank)
                                    .scaleEffect(0.25)
                                    .frame(width: 300 * 0.25, height: 420 * 0.25)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    TestAllCardComponents()
}
