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
            HStack {
                List(dominoes) { dominoset in
                    Domino(domino: dominoset)
                }
            }
            ZStack {
                DominoBoard()
            }
        }
    }
    
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
