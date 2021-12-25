//
//  MotDuJourApp.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 24/12/2021.
//

import SwiftUI

import ComposableArchitecture

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var store: AppCore.Store!
    var appCoordinator: AppCoordinator?
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        self.store = .init(initialState: .initial(), reducer: AppCore., environment: <#T##Environment#>)
//        self.store = .init(initialState: .initial(),
//                           reducer: AppCore.reducer(
//                            state: \.self,
//                            action: /.self,
//                            environment: { $0 }
//                           ),
//                           environment: .init())
    }
}
