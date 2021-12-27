//
//  WordDescriptionCoordinator.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 27/12/2021.
//

import SwiftUI

import ComposableArchitecture

class WordDescriptionCoordinator: ObservableObject {

    @Published var store: WordDescriptionCore.Store
    
    init(store: WordDescriptionCore.Store) {
        self.store = store
    }
}
