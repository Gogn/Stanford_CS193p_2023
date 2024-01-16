//
//  ContentView.swift
//  Test1
//
//  Created by Roman Glukhov on 1/8/24.
//

import SwiftUI

struct ContentView: View {
    let emojiArr = ["😂", "❤️", "😍", "😊"];
    
    var body: some View {
        HStack {
            ForEach (emojiArr.indices, id: \.self) { index in
                CardView(content: emojiArr[index])
            }
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    let content: String;
    @State var isFaceUp = false;
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if (isFaceUp) {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill(.orange)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}




#Preview {
    ContentView()
}
