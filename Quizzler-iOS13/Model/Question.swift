//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Nikola Anastasovski on 15.1.21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let questionText: String
    let correctAnswer: String
    let answers: [String]
    
    init(q: String, a: [String], correctAnswer: String) {
        questionText = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
