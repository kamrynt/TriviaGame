//
//  PrimaryButton.swift
//  Trivia
//
//  Created by Kamryn Tate on 3/11/25.
//

import SwiftUI

struct PrimaryButton: View {
        var text: String
        var background: Color = Color("AccentColor")
        
        var body: some View {
            Text(text)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(background)
                .cornerRadius(30)
                .shadow(radius: 10)
            
        }
    }


struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Next")
    }
}
