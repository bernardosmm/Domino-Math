//
//  SwiftUIView.swift
//  DominoMath
//
//  Created by User on 24/11/23.
//

import SwiftUI

struct GameOverView: View {
    
    @ObservedObject var appContext = AppContext.instance
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 589, height: 600)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(40)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .inset(by: 8.5)
                        .stroke(Color(red: 0.99, green: 0.67, blue: 0.13), lineWidth: 17)
                )
            VStack {
                
                Image("estrela")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 384, height: 153)
                    .clipped()
                    .offset(y:-25)
                
                
                Text("\(appContext.winner) venceu!")
                    .font(.largeTitle.bold())
                    .foregroundColor(Color(.black))
                    .frame(alignment: .leading)
                    .offset(y:-2)
                
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName:"arrow.circlepath")
                        .font(.largeTitle.bold())
                        .foregroundColor(Color(.black))
                        .padding(EdgeInsets(top: 20, leading: 50, bottom: 20, trailing: 50))
                        .background(Color(red: 0.99, green: 0.67, blue: 0.13))
                        .cornerRadius(40)
                        .font(.system(size:23))
                        .frame(alignment: .bottom)
                }
            }
        }
    }
}

#Preview {
    GameOverView()
}
