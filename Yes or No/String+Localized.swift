//
//  String+Localized.swift
//  Yes or No
//
//  Created by Akram Hussein on 03/11/2018.
//  Copyright © 2018 Ross Atkin Associates. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

