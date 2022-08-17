//
//  Question.swift
//  FlagQuizApp
//
//  Created by User on 22/7/22.
//

import Foundation
import UIKit

//MARK:- Question Struct
struct Question {
    let question: UIImage
    let option: [String]
    let answer: String
    
    init(q: UIImage, o: [String], a: String) {
        question = q
        option = o
        answer = a
    }
}
