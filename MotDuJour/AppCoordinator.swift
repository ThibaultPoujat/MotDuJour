//
//  AppCoordinator.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import UIKit
import Combine

import ComposableArchitecture

/// Top most level coordinator of the application
class AppCoordinator {
    
    private let store: AppCore.Store
    private let window: UIWindow
    private var cancellables: Set<AnyCancellable>
    
    internal init(store: AppCore.Store, window: UIWindow) {
        self.store = store
        self.window = window
        
        self.cancellables = .init()
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
