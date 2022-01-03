//
//  WordService.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 27/12/2021.
//

import Foundation
import Combine

public struct WordService {
    
    public let getDailyWord: AnyPublisher<Word, Error>
    
//    static func live() -> Self {
//        .init()
//    }
    
    static func mock() -> Self {
        .init(getDailyWord: Publishers.First.) ))
    }
}
