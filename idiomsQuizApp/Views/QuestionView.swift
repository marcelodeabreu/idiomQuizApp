//  QuestionView.swift
//  idiomsQuizApp
//  Created by Marcelo de Abreu on 17/01/24.
import SwiftUI

struct QuestionView: View {
    
    // variables
    @ObservedObject var viewModel = QuizViewModel()
    
    var body: some View {
        
        Image("logoIdiomQuizApp5")
            .resizable()
            .scaledToFit()
            .frame(width: 250)
            .padding(50)
        
        ZStack {
            
            VStack {
                
                Text("\(viewModel.currentQuestionIndex + 1): \(viewModel.questions[viewModel.currentQuestionIndex].text)")
                    .padding(20)
                    .font(.title2)
                
                ForEach(viewModel.questions[viewModel.currentQuestionIndex].options, id: \.self) { option in
                    Button(action: {
                        viewModel.checkAnswer(option) } ) {
                            
                        Text(option)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    }
                    .padding(5)
                }

                Text("Score: \(viewModel.score)")
                               .padding(20)
                               .foregroundColor(.red)
                               .font(.title3)
            }
            .background(Color.gray)
            .cornerRadius(8)
            .padding()
        }
    }
}

#Preview {
    QuestionView()
}
