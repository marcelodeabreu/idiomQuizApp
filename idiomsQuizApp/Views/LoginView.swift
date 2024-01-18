//  LoginView.swift
//  idiomsQuizApp
//  Created by Marcelo de Abreu on 18/01/24.
import SwiftUI

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
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Login")
            })
        }
    }
}

#Preview {
    LoginView()
}
