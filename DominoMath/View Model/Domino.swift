//
//  Domino.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import Foundation
import SwiftUI

struct Domino: View {
    
    var body: some View {
        return Rectangle()
            .fill(Color.clear)
            .frame(width: 48, height: 96, alignment: .center)
            .background(
                VStack {
                    Image("2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 62, height: 32, alignment: .top)
                        .padding(4)
                    Divider()
                        .frame(width: 38, height: 6, alignment: .center)
                        .overlay(.black)
                    Image("2.1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 62, height: 32, alignment: .bottom)
                        .padding(4)
                }
            )
              .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 2)
              )
    }
}
struct Domino_Previews: PreviewProvider {
    static var previews: some View {
        Domino()
    }
}
