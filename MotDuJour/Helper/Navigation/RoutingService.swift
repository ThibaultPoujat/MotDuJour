//
//  RoutingService.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import Foundation

public protocol RoutingService: AnyObject {
    
    /// Push the presentable.
    ///
    /// - Parameter presentable: The presentable to be displayed
    /// - Parameter onPop: The action to be performed when `presentable` gets popped
    func push(presentable: Presentable, onPop: @escaping () -> Void)
}
