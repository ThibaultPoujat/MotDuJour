//
//  Core.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import Foundation
import ComposableArchitecture

/// The protocol to be implemented if we want to use The Composable Architecture Cores.
public protocol Core {
    
    /// Feature's state
    associatedtype State
    /// Feature's action
    associatedtype Action
    /// Feature's environment
    associatedtype Environment

    /// Typealias simplification for `ComposableArchitecture.Store<State, Action>`
    typealias Store = ComposableArchitecture.Store<State, Action>
    /// Typealias simplification for `ComposableArchitecture.Reducer<State, Action, Environment>`
    typealias Reducer = ComposableArchitecture.Reducer<State, Action, Environment>
    
    /// The feature reducer that will contain all of it's own logic and its dependencies
    static var reducer: Reducer { get }
}
