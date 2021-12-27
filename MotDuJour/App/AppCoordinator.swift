//
//  AppCoordinator.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import UIKit
import Combine

import ComposableArchitecture

enum AppTab {
    case wordDescription
}

/// Top most level coordinator of the application
class AppCoordinator: ObservableObject {
    
    @Published var currentTab: AppTab
    @Published var wordDescriptionCoordinator: WordDescriptionCoordinator
    
    private let store: AppCore.Store
    
    init(store: AppCore.Store) {
        self.store = store
        self.currentTab = .wordDescription
        
        self.wordDescriptionCoordinator = .init(
            store: store.scope(
                state: { $0.wordDescription },
                action: { .wordDescription($0) }
            )
        )
    }
}
