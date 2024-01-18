//
//  HomeView.swift
//  idiomsQuizApp
//
//  Created by Marcelo de Abreu on 17/01/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            Image("logoIdiomQuizApp1")
                .resizable()
                .scaledToFit()
            
            Text("Responda quiz e teste seu conhecimento em expressões idiomáticas")
                .padding()
                .font(.title3)
            
            NavigationLink(destination: QuestionView()) {
                Text("Comece aqui!")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    HomeView()
}
