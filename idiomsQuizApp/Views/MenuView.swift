//
//  MenuView.swift
//  idiomsQuizApp
//
//  Created by Marcelo de Abreu on 06/02/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
      // ADD NAVIGATIONLINK
        
        ZStack {
            
            VStack {
                
                
                Image("logoIdiomQuizApp5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .padding(10)
                
                Text("MASTER")
                    .padding()
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 140, height: 50)
                    .background(Color.blue)
                    .cornerRadius(8)
                
                
                ZStack {
                    Text("GAME MODE (Idiom Quizz)")
                }
                .padding()
                .frame(width: 350, height: 150)
                .background(Color.green)
                .cornerRadius(8)
                .opacity(0.4) // should not apply to font
                
                ZStack {
                    Text("GAME MODE (Vocabulary Photo")
                }
                .padding()
                .frame(width: 350, height: 150)
                .background(Color.blue)
                .cornerRadius(8)
                .opacity(0.4)
                
                ZStack {
                    Text("GAME MODE 3")
                }
                .padding()
                .frame(width: 350, height: 150)
                .background(Color.red)
                .cornerRadius(8)
                .opacity(0.4)
            }
        }
    }
}

#Preview {
    MenuView()
}
