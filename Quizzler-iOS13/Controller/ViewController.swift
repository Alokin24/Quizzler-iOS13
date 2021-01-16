//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        updateUI()
        
    }
    
    func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgrees()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        answer1.setTitle(quizBrain.getQuestionsAnswer(answerNumber: 0), for: .normal)
        answer2.setTitle(quizBrain.getQuestionsAnswer(answerNumber: 1), for: .normal)
        answer3.setTitle(quizBrain.getQuestionsAnswer(answerNumber: 2), for: .normal)
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
            self.answer1.backgroundColor = UIColor.clear
            self.answer2.backgroundColor = UIColor.clear
            self.answer3.backgroundColor = UIColor.clear
        }
    }
}

