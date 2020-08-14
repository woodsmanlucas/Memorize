//
//  ContentView.swift
//  Memorize
//
//  Created by Lucas Johnson on 2020-08-11.
//  Copyright © 2020 Lucas Johnson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        return Grid(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
            }.padding(5)
            }
            .padding()
            .foregroundColor(Color.orange)
        }

}


struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader{ geometry in
            self.body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        ZStack{
            if card.isFaceUp {
            RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
            RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                Text(card.content)
            }else{
                if !card.isMatched{
                    RoundedRectangle(cornerRadius: cornerRadius).fill()
                }
            }
            }
        .font(Font.system(size: fontSize(for: size)))
    }
    
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height)*fontScaleFactor
    }
    
    // MARK: - Drawing Constants
    
    let cornerRadius: CGFloat = 10
    let edgeLineWidth: CGFloat = 3
    let fontScaleFactor: CGFloat = 0.75
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
