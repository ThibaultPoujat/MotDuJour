//
//  Presentable.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 25/12/2021.
//

import Foundation
import UIKit

/// Presentable protocol for `Coordinator`.
/// Represent a "View" that
/// It's displayed by routing service.
public protocol Presentable {
    
    /// Allow us to identify the Presentable.
    var id: String { get }
    
    /// The controller that is displayed.
    var controller: UIViewController { get }
}
