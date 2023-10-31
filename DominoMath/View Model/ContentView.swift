//
//  ContentView.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ScrollView(Axis.Set.horizontal) {
            ZStack(alignment: .leading) {
                DominoBoard()
                HStack {
                    ForEach(dominoes) { dominoset in
                        Domino(domino: dominoset)
                    }
                }
                .frame(maxHeight: .infinity)
            }
        }
    }
    
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
