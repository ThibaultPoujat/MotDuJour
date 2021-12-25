//
//  WordCore.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import ComposableArchitecture

struct WordCore: Core {    
    struct State: Equatable {}
    
    enum Action: Equatable {
        case start
    }
    
    struct Environment {
        
    }
    
    static var featureReducer = Reducer { state, action, environment in
        switch action {
        case .start:
            print("On Appear")
        }
        
        return .none
    }
}
