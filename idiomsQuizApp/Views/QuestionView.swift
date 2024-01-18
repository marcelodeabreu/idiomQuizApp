//  QuestionView.swift
//  idiomsQuizApp
//  Created by Marcelo de Abreu on 17/01/24.
import SwiftUI

struct QuestionView: View {
    
    // variables
    @ObservedObject var viewModel = QuizViewModel()
    
    var body: some View {
        
        VStack {
            Image("logoIdiomQuizApp1")
                .resizable()
                .scaledToFit()
            
            Text("Question \(viewModel.currentQuestionIndex + 1): \(viewModel.questions[viewModel.currentQuestionIndex].text)")
                .padding()
                .font(.title)
            
            ForEach(viewModel.questions[viewModel.currentQuestionIndex].options, id: \.self) { option in
                Button(action: {
                    viewModel.checkAnswer(option) } ) {
                        
                    Text(option)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                    .padding()
            }

            Text("Score: \(viewModel.score)")
                           .padding()
                           .font(.title2)
        }
    }
}

#Preview {
    QuestionView()
}
