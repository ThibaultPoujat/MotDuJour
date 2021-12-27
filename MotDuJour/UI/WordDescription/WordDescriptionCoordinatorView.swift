//
//  WordDescriptionCoordinatorView.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 27/12/2021.
//

import Foundation
import SwiftUI

struct WordDescriptionCoordinatorView: View {
    @ObservedObject var coordinator: WordDescriptionCoordinator
    
    var body: some View {
        WordHeaderView()
    }
}
