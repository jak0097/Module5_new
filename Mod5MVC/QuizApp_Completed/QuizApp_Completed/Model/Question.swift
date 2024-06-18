//
//  Question.swift
//  QuizApp_Completed
//

import Foundation


struct Question {
    
    init(_ questionID: String, _ ques: String, _ o_one:String, _ o_two: String) {
        id = questionID
        question = ques
        option_one = o_one
        option_two = o_two
    }
    
    var id: String
    var question: String
    var option_one: String
    var option_two: String
    
    
}
