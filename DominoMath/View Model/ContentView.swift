//
//  ContentView.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //ScrollView([.horizontal]) {
        VStack {
            ZStack(alignment: .topLeading) {
                DominoBoard()
                HStack {
                    ForEach(Array(dominoes.prefix(6))) { dominoset in
                        Domino(domino: dominoset)
                            .position(x: 100, y: 50) // Ajuste a posição conforme necessário
                    }
                }
                .padding(.top, 100)
            }

            // Certifique-se de que a HStack esteja após a DominoBoard no ZStack
            HStack {
                ForEach(Array(dominoes.prefix(6))) { dominoset in
                    Domino(domino: dominoset)
                        .position(x: 100, y: 50) // Ajuste a posição conforme necessário
                }
            }
            .frame(maxWidth: .infinity, alignment: .bottomLeading)
            .offset(y: -200)

            // Outras ZStacks ou conteúdo, se necessário
        }
        //}
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
