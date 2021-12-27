//
//  AppCore.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import ComposableArchitecture

/// The application Core
/// That's the top most level of the application
public struct AppCore: Core {
    
    public struct State: Equatable {
        var applicationStart: Bool?
        var wordDescription: WordDescriptionCore.State
        
        static func initial() -> Self {
            .init(wordDescription: .initial())
        }
    }
    
    public enum Action: Equatable {
        case start
        case wordDescription(WordDescriptionCore.Action)
    }
    
    public struct Environment {
        var wordDescription: WordDescriptionCore.Environment
    }
    
    public static let reducer = Reducer { state, action, environment in
        switch action {
        case .start:
            state.applicationStart = true
            
            // Child reducer
        case .wordDescription:
            break
        }
        return .none
    }
    .combined(with: WordDescriptionCore.reducer.pullback(
        state: \.wordDescription,
        action: /Action.wordDescription,
        environment: { $0.wordDescription }
    ))
}
