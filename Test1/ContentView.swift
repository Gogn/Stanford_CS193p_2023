//
//  ContentView.swift
//  Test1
//
//  Created by Roman Glukhov on 1/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView(isFaceUp: true)
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    @State var isFaceUp = false;
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if (isFaceUp) {
                base.strokeBorder(lineWidth: 6)
                base.foregroundColor(.white)
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                        .foregroundColor(Color.red)
                }
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
