//
//  DominoTap.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import Foundation
import SwiftUI

struct DominoModel {
    let ladoATexto: String
    let ladoAValor: Int
    let ladoBTexto: String
    let ladoBValor: Int
}

struct DominoUnidade: View {
    
    let modelo = DominoModel(
        ladoATexto: "3+3",
        ladoAValor: 6,
        ladoBTexto: "2+2",
        ladoBValor: 4
    )
    
    var body: some View {
        VStack {
            Domino(a: "3+3", b: "3+3")
            Domino(a: "2+2", b: "8/2")
            
        }
    }
}
