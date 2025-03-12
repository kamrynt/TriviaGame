//
//  Answer.swift
//  Trivia
//
//  Created by Kamryn Tate on 3/11/25.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
