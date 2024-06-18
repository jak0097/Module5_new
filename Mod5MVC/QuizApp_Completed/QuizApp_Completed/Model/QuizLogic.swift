//
//  QuizLogic.swift
//  QuizApp_Completed
//

import Foundation

struct QuizLogic {
    
    var currentQuestion : String = "Lottery"
    
    let question = [
                Question("Lottery",
                        "Congratulations, you won the lottery!  Which destination do you want to visit?",
                         "Australia",
                         "Mackinac Island"),
                Question("Australia",
                        "What would you like to do in Australia?",
                         "Visit the Outback",
                         "Go to the Opera House"),
                Question("Mackinac Island",
                        "What would you like to do on Mackinac Island?",
                         "Ride bikes around the island",
                         "Eat fudge"),
                Question("Outback",
                        "It is too hot and you will get a sunburn!",
                        "Reset Questions",
                        "Reset Questions"),
                Question("Opera",
                        "You will enjoy the show!",
                        "Reset Questions",
                        "Reset Questions"),
                Question("Bike",
                        "The island is big and you will be tired after the bike ride!",
                        "Reset Questions",
                        "Reset Questions"),
                Question("Fudge",
                        "Their famous fudge will be as good as people say!",
                        "Reset Questions",
                        "Reset Questions")
            ]
    
    mutating func updateCurrentQuestion(_ response: String) {
        currentQuestion = response
    }
    
    func getNextQuestion() -> String {
        if currentQuestion == "Lottery" {
            return question[0].question
        } else if currentQuestion == "Australia" {
            return question[1].question
        } else if currentQuestion == "Mackinac Island" {
            return question[2].question
        } else if currentQuestion == "Visit the Outback" {
            return question[3].question
        } else if currentQuestion == "Go to the Opera House" {
            return question[4].question
        } else if currentQuestion == "Ride bikes around the island" {
            return question[5].question
        } else if currentQuestion == "Eat fudge" {
            return question[6].question
        } else {
            return question[0].question
        }
    }
    
    func getChoiceOne() -> String {
        if currentQuestion == "Lottery" {
            return question[0].option_one
        } else if currentQuestion == "Australia" {
            return question[1].option_one
        } else if currentQuestion == "Mackinac Island" {
            return question[2].option_one
        } else if currentQuestion == "Visit the Outback" {
            return question[3].option_one
        } else if currentQuestion == "Go to the Opera House" {
            return question[4].option_one
        } else if currentQuestion == "Ride bikes around the island" {
            return question[5].option_one
        } else if currentQuestion == "Eat fudge" {
            return question[6].option_one
        } else {
            return question[0].option_one
        }
    }
    
    func getChoiceTwo() -> String {
        if currentQuestion == "Lottery" {
            return question[0].option_two
        } else if currentQuestion == "Australia" {
            return question[1].option_two
        } else if currentQuestion == "Mackinac Island" {
            return question[2].option_two
        } else if currentQuestion == "Visit the Outback" {
            return question[3].option_two
        } else if currentQuestion == "Go to the Opera House" {
            return question[4].option_two
        } else if currentQuestion == "Ride bikes around the island" {
            return question[5].option_two
        } else if currentQuestion == "Eat fudge" {
            return question[6].option_two
        } else {
            return question[0].option_two
        }
    }
    
    func getImageName() -> String {
        if currentQuestion == "Lottery" {
            return "Lottery"
        } else if currentQuestion == "Australia" {
            return "Australia"
        } else if currentQuestion == "Mackinac Island" {
            return "Mackinac Island"
        } else if currentQuestion == "Visit the Outback" {
            return "Outback"
        } else if currentQuestion == "Go to the Opera House" {
            return "Opera"
        } else if currentQuestion == "Ride bikes around the island" {
            return "Bike"
        } else if currentQuestion == "Eat fudge" {
            return "Fudge"
        } else {
            return "Lottery"
        }
    }
    
    func checkReset() -> Bool {
        if currentQuestion == "Visit the Outback" {
            return true
        } else if currentQuestion == "Go to the Opera House" {
            return true
        } else if currentQuestion == "Ride bikes around the island" {
            return true
        } else if currentQuestion == "Eat fudge" {
            return true
        } else {
            return false
        }
    }
    
    
    
    
}
