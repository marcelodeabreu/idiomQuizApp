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
            Image("logoIdiomQuizApp1")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            
            Form {
                Section {
                    TextField("email", text: $username)
                }
                
                Section {
                    SecureField("password", text: $passwordEntry)
                }
            }
            
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

#Preview {
    LoginView()
}
