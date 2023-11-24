//
//  ContentView.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOnboardingDismissed = false
    @State private var isOnboardingPresented = false
    @State private var isGameOverPresented = false
    @ObservedObject var appContext = AppContext.instance
    
    @State var player1Hand: [DominoModel] = []
    @State var player2Hand: [DominoModel] = []
    
    
    var body: some View {
        
        ZStack {
            
            DominoBoard()
            
            VStack {
                Text("Player 2")
                    .font(.system(size:20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(hex: "2B8B81"))
                    .cornerRadius(15)
                    .rotationEffect(.degrees(180))
                    .offset(x:-1 , y: -320)
                
                HStack {
                    ForEach($player2Hand) { $dominoset in
                        Domino(domino: $dominoset)
                            .rotationEffect(.degrees(180))
                    }
                    .offset(y: -UIScreen.main.bounds.height * 0.44)
                }
            }
            VStack {
                Text("Player 1")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(hex: "2B8B81"))
                    .cornerRadius(15)
                    .offset(x: 1, y: 445)
                
                HStack {
                    ForEach($player1Hand) { $dominoset in
                        Domino(domino: $dominoset)
                    }
                    .offset(y: UIScreen.main.bounds.height * 0.39)
                }
            }
            .navigationBarBackButtonHidden(true)
            .onAppear(perform: {
                if !isOnboardingDismissed {
                    isOnboardingPresented = true
                }
            })
        }
        .sheet(isPresented: $isOnboardingPresented) {
            if #available(iOS 16.4, *) {
                OnboardingView()
                    .presentationBackground(.clear)
                    .onTapGesture {
                        isOnboardingPresented = false
                    }
            } else {
                OnboardingView()
                    .onTapGesture {
                        isOnboardingPresented = false
                    }
            }
        }
        .sheet(isPresented: $isGameOverPresented) { /*[winner]*//* in*/
            if #available(iOS 16.4, *){
                GameOverView()
                .presentationBackground(.clear)
            } else {
                GameOverView()
            }
            
        }
        .onChange(of: player1Hand) { newValue in
            if newValue.allSatisfy(\.taNaBoard) {
                appContext.winner = "Player 1"
                isGameOverPresented = true
            }
        }
        .onChange(of: player2Hand) { newValue in
            if newValue.allSatisfy(\.taNaBoard) {
                appContext.winner = "Player 2"
                isGameOverPresented = true
            }
        }
        .onAppear {
            let shuffledDominoes = dominoes.shuffled()
            player1Hand = Array(shuffledDominoes.prefix(6))
            player2Hand = Array(shuffledDominoes.suffix(6))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

