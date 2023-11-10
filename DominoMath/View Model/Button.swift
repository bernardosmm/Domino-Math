//
//  Button.swift
//  DominoMath
//
//  Created by User on 09/11/23.
//

import Foundation
import SwiftUI



struct ButtonTurnos: View {
    
    @State var changeTurno = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button("Fim de Turno") {
                changeTurno.toggle()
            }
            .foregroundColor(Color(hex: "FDAA22"))
            .font(.largeTitle)
            .padding(EdgeInsets(top: 20, leading: 50, bottom: 20, trailing: 50))
            .background(Color(hex: "E74F36"))
            .cornerRadius(20)
            .font(.system(size:23))
            
            if changeTurno {
                Text("teste")
                    .font(.largeTitle)
            }
        }
    }
}
struct ButtonTurnos_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTurnos()
    }
}
