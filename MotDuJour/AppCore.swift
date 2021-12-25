//
//  AppCore.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import ComposableArchitecture

/// The application Core
/// That's the top most level of the application
struct AppCore: Core {
    
    struct State: Equatable {
        var applicationStart: Bool?
        
        static func initial() -> Self {
            .init()
        }
    }
    
    enum Action: Equatable {
        case start
    }
    
    struct Environment { }
    
    static let featureReducer = Reducer { state, action, environment in
        switch action {
        case .start:
            state.applicationStart = true
        }
        return .none
    }
}
