//  QuestionViewViewModel.swift
//  idiomsQuizApp
//  Created by Marcelo de Abreu on 17/01/24.
import Foundation
import SwiftUI

struct Question {
    let text: String
    let options: [String]
    let correctAnswer: String
}

class QuizViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var score = 0
    @Published var answeredCorrectlyIndices: [Int] = []

    var questions: [Question] = [
        
        Question(text: "Hit the hay.", options: ["Bater o martelo.", "Pegar a estrada.", "Ir descansar/dormir.", "Tomar um banho."], correctAnswer: "Ir descansar/dormir."),
        
        Question(text: "Cut to the chase.", options: ["Cortar o bolo.", "Sair discretamente.", "Ir direto ao assunto.", "Pedir informações."], correctAnswer: "Ir direto ao assunto."),
        
        Question(text: "To be loaded.", options: ["Ter muito dinheiro.", "Ser mais cuidadoso.", "Ganhar um debate.", "Estar em pé."], correctAnswer: "Ter muito dinheiro."),
        
        Question(text: "In hot water.", options: ["Estar confortável.", "Estar com problemas.", "Prestar atenção.", "Dentro da piscina."], correctAnswer: "Estar com problemas."),
        
        Question(text: "Ring a bell.", options: ["Aprender um instrumento.", "Bater o martelo.", "Guardar as louças.", "Relembrar/trazer lembranças."], correctAnswer: "Relembrar/trazer lembranças."),
        
        Question(text: "Throw in the towel.", options: ["Desistir/jogar a toalha.", "Jogar sem saber.", "Entrar no banheiro.", "Sonhar acordado."], correctAnswer: "Desistir/jogar a toalha."),
        
        Question(text: "In the same boat.", options: ["Andar com rapidez.", "Consertar algo que quebrou.", "Caminhar sozinho.", "Estar no mesmo barco/mesma situação."], correctAnswer: "Estar no mesmo barco/mesma situação."),
        
        Question(text: "Burn the midnight oil.", options: ["Acender uma lâmpada.", "Trabalhar até tarde da noite.", "Desligar as luzes.", "Dormir cedo."], correctAnswer: "Trabalhar até tarde da noite."),
        
        Question(text: "Get over something.", options: ["Subir as escadas.", "Pular o muro.", "Dar conselhos.", "Superar algo."], correctAnswer: "Superar algo."),
        
        Question(text: "Face the music.", options: ["Dançar.", "Lidar com a realidade.", "Aumentar o volume.", "Aprender a lição."], correctAnswer: "Lidar com a realidade."),
        
        Question(text: "Once in a blue moon.", options: ["Acontece raramente.", "Observar o céu.", "As fases da lua.", "Começar uma tempestade."], correctAnswer: "Acontece raramente."),
        
        Question(text: "Finding your feet.", options: ["Comprando calçados novos.", "Caminhando muito.", "Estar se acostumando.", "Correr rapidamente."], correctAnswer: "Estar se acostumando."),
        
        Question(text: "Break the ice.", options: ["Quebrar o gelo.", "Ficar em casa.", "Resolver um problema.", "Caminhar na neve."], correctAnswer: "Quebrar o gelo."),
        
        Question(text: "Cost an arm and a leg.", options: ["Custar muito caro.", "Ser muito fácil.", "Ser acessível.", "Custar muito barato."], correctAnswer: "Custar muito caro."),
        
        Question(text: "Hit the nail on the head.", options: ["Bater na porta com a cabeça.", "Acertar em cheio.", "Perder o alvo.", "Martelar a parede."], correctAnswer: "Acertar em cheio.")
        
    ]
    
    // check answer func
    func checkAnswer(_ selectedAnswer: String) {
        if selectedAnswer == questions[currentQuestionIndex].correctAnswer {
            score += 10
            answeredCorrectlyIndices.append(currentQuestionIndex)
            
            // REMORE ANSWERED QUESTION FROM ARRAY
            questions.remove(at: currentQuestionIndex)
        }
        nextQuestion()
    }

    // next question func
    // if answered correctly, score points and move the answered question to the [answeredCorrectlyIndice]
    // if answered wrongly, just move to the next question and eventually it will appear again
    func nextQuestion() {
        if questions.count > 1 {
            questions.shuffle()
        }
        
        repeat {
            if currentQuestionIndex < questions.count - 1 {
                currentQuestionIndex += 1
            } else {
                
                // ACTION FOR WRONG ANSWER
                
                if score >= 90 {
                    print("You are a pro!")
                } else {
                    print("Keep studying, don't give up!")
                }
                print("Thanks for playing :)")
                return
            }
        } while answeredCorrectlyIndices.contains(currentQuestionIndex)
    }
}
