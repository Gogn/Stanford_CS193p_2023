//
//  Test1App.swift
//  Test1
//
//  Created by Roman Glukhov on 1/8/24.
//

import SwiftUI

@main
struct Test1App: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
