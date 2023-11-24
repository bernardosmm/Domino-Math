//
//  AppContext.swift
//  DominoMath
//
//  Created by User on 24/11/23.
//

import Foundation

class AppContext: ObservableObject {
    static var instance = AppContext()
    @Published var winner: String = "AllStars"
}
