//
//  WordHeaderView.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 24/12/2021.
//

import SwiftUI

/// Funny header view that transform a `String` to emojis letter.
struct WordHeaderView: View {
    
    let title: String
    
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
            
            ForEach(Array(title), id: \.self) {
                if $0.isWhitespace {
                    Spacer()
                } else {
                    Image(systemName: makeEmoji(from: $0))
                        .font($0.isUppercase ? .largeTitle : .title2)
                }
            }
            
            Spacer()
        }
    }
}

private extension WordHeaderView {
    
    /// Transform a `Character` to it's emoji name equivalent, filled or not depending if it's uppercase.
    /// Example: `A` -> `"a.square.fill"` // `b` -> `"b.square"` //
    /// - Parameter character: Character to transform.
    /// - Returns: Corresponding character emoji name.
    func makeEmoji(from character: Character) -> String {
        "\(character.lowercased()).square\(character.isUppercase ? ".fill" : "")"
    }
}

private struct WordHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        WordHeaderView(title: "Test One Two Three")
            .preferredColorScheme(.dark)
        
        WordHeaderView(title: "Test One Two Three")
            .preferredColorScheme(.light)
    }
}
