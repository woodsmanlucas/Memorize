//
//  Array+Only.swift
//  Memorize
//
//  Created by Lucas Johnson on 2020-08-14.
//  Copyright © 2020 Lucas Johnson. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
