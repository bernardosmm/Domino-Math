//
//  DominoMoves.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import Foundation
import SwiftUI

struct DominoMoves:View {
    
    @State var inicialPosition: CGSize = .zero
    @State var finalPosition: CGSize = .zero
    
    var body: some View {
        
        ZStack {
            Domino()
        }   .offset(inicialPosition)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        withAnimation(.spring()) {
                            inicialPosition = value.translation
                        }
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            finalPosition = value.translation
                            inicialPosition = finalPosition
                        }
                    }
            )
    }
}
struct DominoMoves_Previews: PreviewProvider {
    static var previews: some View {
        DominoMoves()
    }
}
