//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Lucas Johnson on 2020-08-14.
//  Copyright © 2020 Lucas Johnson. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
  func firstIndex(matching: Element) -> Int? {
    for index in 0..<self.count {
        if self[index].id == matching.id {
            return index
        }
    }
    return nil
}}
