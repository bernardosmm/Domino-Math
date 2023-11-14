//
//  ContentView.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            DominoBoard()
            HStack {
                ForEach(Array(dominoes.prefix(6))) { dominoset in
                    Domino(domino: dominoset)
                }
                .offset(x: -10, y: -460)
            }
            HStack {
                ForEach(Array(dominoes.prefix(6))) { dominoset in
                    Domino(domino: dominoset)
                }
                .offset(x: -10, y: 475)
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
