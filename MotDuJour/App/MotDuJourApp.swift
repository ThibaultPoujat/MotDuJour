//
//  MotDuJourApp.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 24/12/2021.
//

import SwiftUI

import ComposableArchitecture

@main
struct MotDuJourApp: App {
    // MARK: Stored Properties
    @StateObject var coordinator = AppCoordinator(store: .init(
        initialState: .initial(),
        reducer: AppCore.reducer,
        environment: AppCore.Environment(wordDescription: WordDescriptionCore.Environment.init()))
    )

    // MARK: Scenes
    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(coordinator: coordinator)
        }
    }
}
