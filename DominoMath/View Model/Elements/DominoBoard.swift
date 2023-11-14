//
//  DominoBoard.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import SwiftUI
import Foundation

struct DominoBoard: View {
    var body: some View {
        let boardSize = UIScreen.main.bounds
        let boardWidth = boardSize.width
        let boardHeight = boardSize.height
        ZStack {
            Rectangle()
                .fill(Color(hex: "2B8B81"))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
               .frame(width: boardWidth * 4, height: boardHeight * 1.0)
                Image("oii")
                .frame(width: boardWidth * 4, height: boardHeight * 0.5)
                .scaledToFit()
        }
    }
}

struct DominoBoard_Previews: PreviewProvider {
    static var previews: some View {
        DominoBoard()
    }
}
