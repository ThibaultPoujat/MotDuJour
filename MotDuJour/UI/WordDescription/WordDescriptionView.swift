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
    
    struct ViewState: Equatable { }
    
    let store: WordDescriptionCore.Store
    
    var body: some View {
        ScrollView {
            VStack {
                WordDescriptionHeaderView(title: WordDescriptionLocalized.title)
                
                Spacer()
                
                Text("Mot a définir")
                
                Spacer()
                
                Text("Définition")
            }
        }
    }
}

extension WordDescriptionCore.State {
    var view: WordDescriptionView.ViewState {
        .init()
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
