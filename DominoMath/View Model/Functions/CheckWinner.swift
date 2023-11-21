//
//  Button.swift
//  DominoMath
//
//  Created by User on 09/11/23.
//

import Foundation
import SwiftUI

//eixo x: -116 e 635
//eixo y: -103 e -768

let location1: Double = -23.0
let location2: Double = -103.0

func checkIfOnTheBoard(location1: Double, location2: Double) -> Bool {
    return (-23.0...23.0).contains(location1) && (-103.0...100.0).contains(location2)
}

func checkWinner() {
    
}

func checkQtdDominoes() {
    
}

struct Winner: View {
    
    var body: some View {
        Text("Oi")
    }
}
struct Winner_Previews: PreviewProvider {
    static var previews: some View {
        Winner()
    }
}
