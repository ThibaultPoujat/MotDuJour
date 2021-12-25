//
//  WordHeaderView.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 24/12/2021.
//

import SwiftUI

struct WordHeaderView: View {
        
    var body: some View {
        VStack(spacing: 8) {
            wordEmojiView(from: "Mot")
            wordEmojiView(from: "Du")
            wordEmojiView(from: "Jour")
        }
    }
}

private extension WordHeaderView {
    @ViewBuilder
    func wordEmojiView(from word: String) -> some View {
        HStack(spacing: 0) {
            ForEach(Array(word), id: \.self) {
                Image(systemName: "\($0.lowercased()).square\($0.isUppercase ? ".fill" : "")")
                    .font($0.isUppercase ? .largeTitle : .title2)
            }
        }
    }
}

struct WordHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        WordHeaderView()
            .preferredColorScheme(.dark)
        
        WordHeaderView()
            .preferredColorScheme(.light)
    }
}
