//
//  QuestionView.swift
//  Trivia
//
//  Created by Kamryn Tate on 3/11/25.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        VStack(spacing: 40){
            HStack{
                Text("Trivia Game")
                    .pinkTitle()
                
                Spacer()
                
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
                
            }
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20){
                Text(triviaManager.question)
                    .font(.system(size:20 ))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id) {
                    answer in AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
                    
            }
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text:"Next", background: triviaManager.answerSelected ? Color("AccentColor") : Color.gray)
            }
            .disabled(!triviaManager.answerSelected)
            
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
        .navigationBarHidden(true)
    }
}

#Preview {
    QuestionView()
        .environmentObject(TriviaManager())
}
