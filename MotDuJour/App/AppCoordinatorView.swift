//
//  AppCoordinatorView.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 27/12/2021.
//

import SwiftUI

struct AppCoordinatorView: View {
    
    // MARK: Stored Properties
    @ObservedObject var coordinator: AppCoordinator
    
    var body: some View {
        TabView(selection: $coordinator.currentTab) {
            TabView {
                WordDescriptionCoordinatorView(coordinator: coordinator.wordDescriptionCoordinator)
                    .tabItem {
                        Label(WordDescriptionLocalized.tabLabel, systemImage: "house.fill")
                    }
                    .tag(AppTab.wordDescription)
            }
        }
    }
}
