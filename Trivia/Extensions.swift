//
//  Extensions.swift
//  Trivia
//
//  Created by Kamryn Tate on 3/11/25.
//

import Foundation
import SwiftUI

extension Text {
    func pinkTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
