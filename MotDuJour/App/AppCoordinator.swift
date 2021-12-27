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
    
    @Published var tab = AppTab.wordDescription
    @Published var wordDescriptionCoordinator: WordDescriptionCoordinator
    
    private let store: AppCore.Store
    private var cancellables: Set<AnyCancellable>
    
    internal init(store: AppCore.Store) {
        self.store = store

        self.cancellables = .init()
        self.wordDescriptionCoordinator = .init()
    }
    
    func start() {
        self.store.scope(state: { $0.applicationStart })
            .ifLet { [weak self] applicationStarted in
                self?.startWordFlow()
            }
            .store(in: &cancellables)

    }
}

private extension AppCoordinator {
    func startWordFlow() {
        
    }
}
