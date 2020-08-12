//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lucas Johnson on 2020-08-12.
//  Copyright © 2020 Lucas Johnson. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
        
        
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
         emojis[pairIndex]   }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
//    MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
