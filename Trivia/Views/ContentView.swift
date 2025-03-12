//
//  ContentView.swift
//  Trivia
//
//  Created by Kamryn Tate on 3/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    var body: some View {
        NavigationView{
            VStack(spacing: 40){
                VStack(spacing: 20){
                    Text("Trivia")
                        .pinkTitle()
                    
                    Text("Test your knowledge")
                        .foregroundColor(Color("AccentColor"))
                }
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                        PrimaryButton(text: "Start Trivia")
                    }
                
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color.white)
    }
}

#Preview {
    ContentView()
}
