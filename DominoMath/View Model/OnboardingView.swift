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

            VStack(spacing: 50) {
                Spacer()
                Spacer()

                Text("Regras")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()

                Spacer()

                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Cada jogador começa com 6 peças aleatórias.")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()

                        Text("Cada peça tem duas expressões matemáticas, uma em cada ponta.")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.leading, 25)

                        Text("O objetivo é resolver as expressões o mais rápido possível para encaixá-las no tempo determinado.")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.leading, 20)
                    }
                }

                Spacer()
            }
        }
        .padding(20) // Ajuste o valor de preenchimento conforme necessário
        .background(Color.white)
        .cornerRadius(20) // Ajuste o valor de arredondamento conforme necessário
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}


// Preview do layout no Canvas
