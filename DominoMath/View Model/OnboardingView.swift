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
            VStack(spacing: 75) {
                Text("Regras")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Cada jogador começa com 6 peças aleatórias.")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                    
                    Text("Cada peça tem duas expressões matemáticas, uma em cada ponta.")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                    
                    Text("O objetivo é resolver as expressões o mais rápido possível para encaixá-las no tempo determinado.")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                }
                .offset(y:-50)
            }
        
            .padding(20)
            .background(Color(hex: 0xD9D9D9))
            .cornerRadius(20)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

extension Color {
    init(hex: Int, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 8) & 0xff) / 255,
            blue: Double(hex & 0xff) / 255,
            opacity: alpha
        )
    }
}

