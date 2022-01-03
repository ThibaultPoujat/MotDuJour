//
//  WordDescriptionCore.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import ComposableArchitecture

public struct WordDescriptionCore: Core {
    
    public struct State: Equatable {
        var word: Word?
        static func initial() -> Self {
            .init()
        }
    }
    
    public enum Action: Equatable {
        case start
    }
    
    public struct Environment {
        
    }
    
    public static var reducer = Reducer { state, action, environment in
        switch action {
        case .start:
            print("On Appear")
        }
        
        return .none
    }
}
