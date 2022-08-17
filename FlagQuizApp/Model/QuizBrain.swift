//
//  QuizBrain.swift
//  FlagQuizApp
//
//  Created by User on 22/7/22.
//

import Foundation
import UIKit

//MARK:-

struct QuizBrain {
    let quize = [
    Question(q: UIImage(named: "argentina")!, o: ["argentina","australia","bangladesh","belgium"], a: "argentina"),
    Question(q: UIImage(named: "australia")!, o: ["argentina","australia","bangladesh","belgium"], a: "australia"),
    Question(q: UIImage(named: "bangladesh")!, o: ["argentina","australia","bangladesh","belgium"], a: "bangladesh"),
    Question(q: UIImage(named: "belgium")!, o: ["argentina","australia","bangladesh","belgium"], a: "belgium"),
    Question(q: UIImage(named: "brazil")!, o: ["brazil","colombia","denmark","england"], a: "brazil"),
    Question(q: UIImage(named: "colombia")!, o: ["brazil","colombia","denmark","england"], a: "colombia"),
    Question(q: UIImage(named: "denmark")!, o: ["brazil","colombia","denmark","england"], a: "denmark"),
    Question(q: UIImage(named: "england")!, o: ["brazil","colombia","denmark","england"], a: "england"),
    Question(q: UIImage(named: "france")!, o: ["france","germany","iceland","japan"], a: "france"),
    Question(q: UIImage(named: "germany")!, o: ["france","germany","iceland","japan"], a: "germany"),
    Question(q: UIImage(named: "iceland")!, o: ["france","germany","iceland","japan"], a: "iceland"),
    Question(q: UIImage(named: "japan")!, o: ["france","germany","iceland","japan"], a: "japan"),
    Question(q: UIImage(named: "saudi_arabia")!, o: ["saudi_arabia","south_korea","uruguay","japan"], a: "saudi_arabia"),
    Question(q: UIImage(named: "south_korea")!, o: ["saudi_arabia","south_korea","uruguay","japan"], a: "south_korea"),
    Question(q: UIImage(named: "uruguay")!, o: ["saudi_arabia","south_korea","uruguay","japan"], a: "uruguay")
    ]
    
    var questionExist = [Int]()
    var score = 0
    var questionNumber = 0
    var randomNumber: Int = 0
    
    // Select Random
    mutating func randeom(exist: [Int], n: Int) -> Int {
        repeat {
            randomNumber = Int.random(in: 0..<n)
        } while(exist.contains(randomNumber))
        return randomNumber
    }
    
    mutating func getQuestionNumber() -> Int{
        let r =  randeom(exist: questionExist, n: quize.count)
        questionExist.append(r)
        return r
    }
    
    func getQuestionImg(_ imgNumber: Int) -> UIImage {
        print(imgNumber)
        return quize[imgNumber-1].question
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quize[randomNumber].answer {
            print("Right")
            score += 1
            return true
        } else {
            print("Wrong!")
            return false
        }
    }
    
    // Next Question
    mutating func nextQuestion() {
        if questionNumber + 1 < quize.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
            questionExist = []
        }
    }
    
    // Score
    func getScore() -> Int {
        return score
    }
    
    // Question Number
    func curentQuestionNumber() -> Int {
        return questionNumber
    }
    
    func totalQuiz() -> Int {
        return quize.count
    }
    
}



