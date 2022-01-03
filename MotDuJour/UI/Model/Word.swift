//
//  Word.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 27/12/2021.
//

import Foundation

public struct Word: Equatable {
    let name: String
    let definition: String
    
    static func mock() -> Self {
        .init(name: "Test", definition: "This is a test definition")
    }
}
