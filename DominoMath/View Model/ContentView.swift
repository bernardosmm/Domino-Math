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
            ZStack {
                DominoBoard()
                DominoMoves()
                DominoMoves()
            }
        }
    }
    
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
