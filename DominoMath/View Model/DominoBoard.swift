//
//  DominoBoard.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import Foundation
import SwiftUI

struct DominoBoard: View {
    var body: some View {
        let boardSize = UIScreen.main.bounds
        let boardWidth = boardSize.width
        let boardHeight = boardSize.height
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: boardWidth * 4, height: boardHeight * 1.0)
            Rectangle()
                .fill(Color.purple)
                .frame(width: boardWidth * 4, height: boardHeight * 0.6)
        }
    }
        
    }

struct DominoBoard_Previews: PreviewProvider {
    static var previews: some View {
        DominoBoard()
    }
}
