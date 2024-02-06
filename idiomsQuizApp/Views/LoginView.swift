//  LoginView.swift
//  idiomsQuizApp
//  Created by Marcelo de Abreu on 18/01/24.
import SwiftUI

// Authentication will be done with Firebase.

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var passwordEntry: String = ""
    
    var body: some View {
        VStack {
            Image("logoIdiomQuizApp5")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .padding(50)
            
            Form {
                Section {
                    TextField("email", text: $username)
                }
                
                Section {
                    SecureField("password", text: $passwordEntry)
                }
            }
            
            NavigationLink(destination: MenuView()) {
                Text("Começar")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }
            
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
