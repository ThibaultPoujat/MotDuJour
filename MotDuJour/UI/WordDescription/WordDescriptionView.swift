//
//  WordDescriptionView.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import SwiftUI
import ComposableArchitecture

struct WordDescriptionView: View {
    
    typealias ViewStore = ComposableArchitecture.ViewStore<ViewState, ViewAction>
    
    enum ViewAction: Equatable {
        case onAppear
    }
    
    struct ViewState: Equatable {
        var wordName: String
        var wordDefinition: String
    }
    
    let store: WordDescriptionCore.Store
    
    var body: some View {
        ScrollView {
            WithViewStore(self.store) { viewStore in
                VStack {
                    WordDescriptionHeaderView(title: WordDescriptionLocalized.title)
                    
                    Spacer()
                    
                    Text(viewStore.state.view.wordName)
                    
                    Spacer()
                    
                    Text(viewStore.state.view.wordDefinition)
                }
            }
        }
    }
}

extension WordDescriptionCore.State {
    var view: WordDescriptionView.ViewState {
        .init(wordName: word?.name ?? "Placeholder",
              wordDefinition: word?.definition ?? "Placeholder")
    }
}

extension WordDescriptionCore.Action {
    static func fromView(_ viewAction: WordDescriptionView.ViewAction) -> Self {
        switch viewAction {
        case .onAppear:
            return .start
        }
    }
}
