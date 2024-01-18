//  HomeView.swift
//  idiomsQuizApp
//  Created by Marcelo de Abreu on 17/01/24.
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("logoIdiomQuizApp1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Text("Teste seus conhecimentos em Idioms!")
                    .padding()
                    .font(.title3)
                
                NavigationLink(destination: QuestionView()) {
                    Text("Começar")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
