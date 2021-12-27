//
//  String+Extension.swift
//  MotDuJour
//
//  Created by Thibault POUJAT on 27/12/2021.
//

import Foundation

/// Small extension to Localize Strings in this application.
extension String {
    
    /// A localized version of this `String` if it exists in the `Localizable.strings` files.
    var localized: String {
        NSLocalizedString(self, bundle: .main, comment: "")
    }
    
}
