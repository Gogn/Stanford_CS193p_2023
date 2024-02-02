//
//  MemorizeGame.swift
//  Test1
//
//  Created by Roman Glukhov on 2/1/24.
//

import Foundation

struct MemoryGame<CardConent> {
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardConent) {
        cards = [];
        // add numberOfPairsOfCards x 2 cards
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex);
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    struct Card {
        var isFaceUp = true;
        var isMatched = false;
        let content: CardConent;
    }
}
