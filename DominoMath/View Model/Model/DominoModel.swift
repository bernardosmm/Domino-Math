//
//  DominoTap.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import Foundation
import SwiftUI

struct DominoModel: Identifiable {
    let id = UUID()
    let ladoATexto: String
    let ladoAValor: Int
    let ladoBTexto: String
    let ladoBValor: Int
}

let dominoes = [
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "5 / 5", ladoBValor: 1),
    DominoModel(ladoATexto: "1 x 2", ladoAValor: 2, ladoBTexto: "1 + 4", ladoBValor: 5),
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "5 / 5", ladoBValor: 1),
    DominoModel(ladoATexto: "1 x 2", ladoAValor: 2, ladoBTexto: "1 + 4", ladoBValor: 5),
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "5 / 5", ladoBValor: 1),
    DominoModel(ladoATexto: "1 x 2", ladoAValor: 2, ladoBTexto: "1 + 4", ladoBValor: 5),
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "5 / 5", ladoBValor: 1),
    DominoModel(ladoATexto: "1 x 2", ladoAValor: 2, ladoBTexto: "1 + 4", ladoBValor: 5),
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "5 / 5", ladoBValor: 1),
    DominoModel(ladoATexto: "1 x 2", ladoAValor: 2, ladoBTexto: "1 + 4", ladoBValor: 5),
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "5 / 5", ladoBValor: 1),
    DominoModel(ladoATexto: "1 x 2", ladoAValor: 2, ladoBTexto: "1 + 4", ladoBValor: 5),
]
