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

            VStack {
                Spacer()

                Text("Regras")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)

                Spacer()

                ScrollView {
                    VStack(alignment: .center, spacing: 15) {
                        Text("Cada jogador começa com 6 peças aleatórias.")
                            .font(.title)
                            .foregroundColor(.black)

                        Text("Cada peça tem duas expressões matemáticas, uma em cada ponta.")
                            .font(.title)
                            .foregroundColor(.black)

                        Text("O objetivo é resolver as expressões o mais rápido possível para encaixá-las no tempo determinado.")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    .padding(20) // Adicionar espaço ao redor dos textos
                }

                Spacer()
            }
        }
    }
}

// Preview do layout no Canvas
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

