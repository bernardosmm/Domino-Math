//
//  DominoTap.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import Foundation

struct DominoModel: Identifiable {
    let id = UUID()
    let ladoATexto: String
    let ladoAValor: Int
    let ladoBTexto: String
    let ladoBValor: Int
}

let dominoes = [
    DominoModel(ladoATexto: "4 + 1", ladoAValor: 5, ladoBTexto: "6 ÷ 3", ladoBValor: 2),
    DominoModel(ladoATexto: "2 × 3", ladoAValor: 6, ladoBTexto: "4 - 2", ladoBValor: 2),
    DominoModel(ladoATexto: "5 + 1", ladoAValor: 6, ladoBTexto: "3 - 1", ladoBValor: 2),
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "6 ÷ 2", ladoBValor: 3),
    DominoModel(ladoATexto: "1 × 5", ladoAValor: 5, ladoBTexto: "4 - 3", ladoBValor: 1),
    DominoModel(ladoATexto: "2 + 4", ladoAValor: 6, ladoBTexto: "5 × 1", ladoBValor: 5),
    DominoModel(ladoATexto: "4 - 1", ladoAValor: 3, ladoBTexto: "2 ÷ 1", ladoBValor: 2),
    DominoModel(ladoATexto: "4 + 2", ladoAValor: 6, ladoBTexto: "5 ÷ 5", ladoBValor: 1),
    DominoModel(ladoATexto: "1 + 2", ladoAValor: 3, ladoBTexto: "6 ÷ 3", ladoBValor: 2),
    DominoModel(ladoATexto: "4 × 1", ladoAValor: 4, ladoBTexto: "2 ÷ 1", ladoBValor: 2),
    DominoModel(ladoATexto: "3 + 1", ladoAValor: 4, ladoBTexto: "6 ÷ 2", ladoBValor: 3),
    DominoModel(ladoATexto: "4 - 2", ladoAValor: 2, ladoBTexto: "3 × 3", ladoBValor: 9),
    DominoModel(ladoATexto: "5 + 1", ladoAValor: 6, ladoBTexto: "4 ÷ 2", ladoBValor: 2),
    DominoModel(ladoATexto: "1 × 1", ladoAValor: 1, ladoBTexto: "6 ÷ 6", ladoBValor: 1),
    DominoModel(ladoATexto: "4 - 2", ladoAValor: 2, ladoBTexto: "3 ÷ 1", ladoBValor: 3),
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "5 ÷ 5", ladoBValor: 1),
    DominoModel(ladoATexto: "3 - 1", ladoAValor: 2, ladoBTexto: "6 ÷ 2", ladoBValor: 3),
    DominoModel(ladoATexto: "2 × 3", ladoAValor: 6, ladoBTexto: "4 - 1", ladoBValor: 3),
    DominoModel(ladoATexto: "5 + 1", ladoAValor: 6, ladoBTexto: "2 ÷ 2", ladoBValor: 1),
    DominoModel(ladoATexto: "3 + 2", ladoAValor: 5, ladoBTexto: "6 ÷ 3", ladoBValor: 2),
    DominoModel(ladoATexto: "2 - 1", ladoAValor: 1, ladoBTexto: "4 × 1", ladoBValor: 4),
    DominoModel(ladoATexto: "4 + 1", ladoAValor: 5, ladoBTexto: "3 - 2", ladoBValor: 1),
    DominoModel(ladoATexto: "2 × 2", ladoAValor: 4, ladoBTexto: "6 ÷ 3", ladoBValor: 2),
    DominoModel(ladoATexto: "5 - 1", ladoAValor: 4, ladoBTexto: "2 × 2", ladoBValor: 4),
    DominoModel(ladoATexto: "3 × 2", ladoAValor: 6, ladoBTexto: "6 ÷ 2", ladoBValor: 3),
    DominoModel(ladoATexto: "1 + 1", ladoAValor: 2, ladoBTexto: "3 - 1", ladoBValor: 2),
    DominoModel(ladoATexto: "4 - 3", ladoAValor: 1, ladoBTexto: "4 ÷ 2", ladoBValor: 2),
    DominoModel(ladoATexto: "3 × 1", ladoAValor: 3, ladoBTexto: "5 ÷ 5", ladoBValor: 1),
    DominoModel(ladoATexto: "2 - 1", ladoAValor: 1, ladoBTexto: "6 × 1", ladoBValor: 6),
    DominoModel(ladoATexto: "5 × 1", ladoAValor: 5, ladoBTexto: "2 ÷ 2", ladoBValor: 1),
    DominoModel(ladoATexto: "1 × 4", ladoAValor: 4, ladoBTexto: "6 ÷ 3", ladoBValor: 2),
    DominoModel(ladoATexto: "4 ÷ 2", ladoAValor: 2, ladoBTexto: "3 × 1", ladoBValor: 3),
    DominoModel(ladoATexto: "3 - 1", ladoAValor: 2, ladoBTexto: "5 + 1", ladoBValor: 6),
    DominoModel(ladoATexto: "2 + 2", ladoAValor: 4, ladoBTexto: "4 ÷ 1", ladoBValor: 4),
    DominoModel(ladoATexto: "5 - 2", ladoAValor: 3, ladoBTexto: "6 ÷ 2", ladoBValor: 3),
    DominoModel(ladoATexto: "1 + 3", ladoAValor: 4, ladoBTexto: "3 × 1", ladoBValor: 3),
]
