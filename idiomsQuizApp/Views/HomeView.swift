//  HomeView.swift
//  idiomsQuizApp
//  Created by Marcelo de Abreu on 17/01/24.
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("logoIdiomQuizApp5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .padding(50)
                
                Text("Speak Native, Go Fluenty!")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Spacer()
                
                Text("Um app para se tornar Fluenty!")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                NavigationLink(destination: LoginView()) {
                    Text("Começar")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }
                .padding(.bottom, 30)
            }
            .padding()
            .navigationBarHidden(true)
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    HomeView()
}
