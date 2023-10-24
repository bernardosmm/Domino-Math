//
//  DominoMoves.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import Foundation
import SwiftUI

struct DominoMoves:View {
    
    @State private var location: CGPoint = CGPoint(x: 50, y: 50) // 1

    var body: some View {

        ZStack {
            Domino()
        }
        .position(location)
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { value in
                    self.location = value.location
                }
                .onEnded { value in
                    print("onEnded")
                }
        )
    }
    
//    @State private var location: CGPoint = CGPoint(x: 50, y: 50) // 1
//
//    var body: some View {
//        RoundedRectangle(cornerRadius: 10)
//            .foregroundColor(.pink)
//            .frame(width: 100, height: 100)
//            .position(location) // 2
//            .gesture(
//                DragGesture()
//                    .onChanged { value in
//                        print("onChanged...")
////                        self.location = value.location
//                    }
//            )
//    }
    
}
struct DominoMoves_Previews: PreviewProvider {
    static var previews: some View {
        DominoMoves()
    }
}


