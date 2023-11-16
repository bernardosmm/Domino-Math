//
//  OnboardingView.swift
//  DominoMath
//
//  Created by User on 16/11/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        ZStack {
            Color(.white).ignoresSafeArea()
            VStack(alignment: .leading, spacing: 10) {
                // Conteúdo do onboarding (regras)
                Text("Bem-vindo ao DominoMath!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.blue)
                Text("Regras")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.blue)
                

                Text("Cada jogador começa com 6 peças aleatórias.")
                    .font(.headline)
                    .foregroundColor(.black)

                Text("Cada peça tem duas expressões matemáticas, uma em cada ponta.")
                    .font(.headline)
                    .foregroundColor(.black)

                Text("O objetivo é resolver as expressões o mais rápido possível para encaixá-las no tempo determinado.")
                    .font(.headline)
                    .foregroundColor(.black)
            }
//            .padding(20) // Adicionar espaço ao redor de todo o conteúdo
           /* .background(Color.yellow)*/ // Cor de fundo
            .ignoresSafeArea()
            .cornerRadius(20)
            .padding(.horizontal, 20)
            .transition(.offset(y: UIScreen.main.bounds.height))
        }
        
        
      
    }
}
