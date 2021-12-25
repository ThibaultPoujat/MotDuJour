//
//  Coordinator.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import Foundation

/// Coordinator protocol.
/// It's only purpose is to handle the navigation in the application (push, present).
/// That's the only navigation pattern used in this application.
public protocol Coordinator: AnyObject {
    
    // Starts the coordinator flow.
    func start()
    
    /// The router used by the coordinator to perform actual navigation operations
    var router: RoutingService { get }
}
