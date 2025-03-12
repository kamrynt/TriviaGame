//
//  TriviaView.swift
//  Trivia
//
//  Created by Kamryn Tate on 3/11/25.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20){
                Text("Trivia Game")
                    .pinkTitle()
                
                Text("Congratulations! You've completed all the trivia questions!")
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                }label: {
                    PrimaryButton(text:"Play Again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.white))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
