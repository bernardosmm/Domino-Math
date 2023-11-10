//
//  ContentView.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                DominoBoard()
                HStack {
                    ForEach(Array(dominoes.prefix(6))) { dominoset in
                        Domino(domino: dominoset)
                            .position(x: 100, y: 50)
                    }
                }
                ZStack {
                    HStack {
                        ForEach(Array(dominoes.prefix(6))) { dominoset in
                            Domino(domino: dominoset)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    .offset(y: -200)
                }
            }
                .padding(.top, 100)
            }
            HStack {
                ForEach(Array(dominoes.prefix(6))) { dominoset in
                    Domino(domino: dominoset)
                        .position(x: 100, y: 50)
                }
            }
            .frame(maxWidth: .infinity, alignment: .bottomLeading)
            .offset(y: -200)

        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
