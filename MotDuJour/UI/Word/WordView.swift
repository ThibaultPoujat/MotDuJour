//
//  WordView.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import SwiftUI
import ComposableArchitecture

struct WordView: View {

    typealias ViewStore = ComposableArchitecture.ViewStore<ViewState, ViewAction>
    
    enum ViewAction: Equatable {
        case onAppear
    }
    
    struct ViewState: Equatable { }
    
    let store: WordCore.Store
    
    var body: some View {
        ScrollView {
            VStack {
                WordHeaderView()
                
                Spacer()
                
                Text("Mot a définir")
                
                Spacer()
                
                Text("Définition")
            }
        }
    }
}

extension WordCore.State {
    var view: WordView.ViewState {
        .init()
    }
}

extension WordCore.Action {
    static func fromView(_ viewAction: WordView.ViewAction) -> Self {
        switch viewAction {
        case .onAppear:
            return .start
        }
    }
}
