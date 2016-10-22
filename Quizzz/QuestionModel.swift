//
//  QuestionModel.swift
//  Quizzz
//
//  Created by Michael Leatherbury on 10/21/16.
//  Copyright © 2016 LetterB. All rights reserved.
//

import Foundation


struct options {
    
    let optionOne: String?
    let optionTwo: String?
    let optionThree: String?
    let optionFour: String?
    
    
}



class Questions {
    
    let question: String
    let answer: String
    let option: options
    
    init(question: String, answer: String, option: options) {
        self.question = question
        self.answer = answer
        self.option = option
        
    }
    
}


let questionOne = Questions(question: "This was the only US President to serve more than two consecutive terms.",  answer: "Franklin D. Roosevelt",
                            option: options(optionOne: "George Washington", optionTwo: "Franklin D. Roosevelt", optionThree: "Woodrow Wilson", optionFour: "Andrew Jackson"))

let questionTwo = Questions(question: "Which of the following countries has the most residents?", answer: "Nigeria",
                            option: options(optionOne: "Nigeria", optionTwo: "Russia", optionThree: "Iran", optionFour: "Vietnam"))

let questionThree = Questions(question: "In what year was the United Nations founded?", answer: "1945",
                              option: options(optionOne: "1918", optionTwo: "1919", optionThree: "1945", optionFour: "1954"))

let questionFour = Questions(question: "The Titanic departed from the United Kingdom, where was it supposed to arrive?", answer: "New York City",
                             option: options(optionOne: "Paris", optionTwo: "Washington D.C.", optionThree: "New York City", optionFour: "Boston"))

let questionFive = Questions(question: "Which nation produces the most oil?", answer: "Canada",
                             option: options(optionOne: "Iran", optionTwo: "Iraq", optionThree: "Brazil", optionFour: "Canada"))

let questionSix = Questions(question: "Which country has most recently won consecutive World Cups in Soccer?", answer: "Brazil",
                            option: options(optionOne: "Italy", optionTwo: "Brazil", optionThree: "Argetina", optionFour: "Spain"))

let questionSeven = Questions(question: "Which of the following rivers is longest?", answer: "Mississippi",
                              option: options(optionOne: "Yangtze", optionTwo: "Mississippi", optionThree: "Congo", optionFour: "Mekong"))

let questionEight = Questions(question: "Which city is the oldest?", answer: "Mexico City",
                              option: options(optionOne: "Cape Town", optionTwo: "Mexico City", optionThree: "San Juan", optionFour: "Sydney"))

let questionNine = Questions(question: "Which country was the first to allow women to vote in national elections?", answer: "Poland",
                             option: options(optionOne: "Poland", optionTwo: "United States", optionThree: "Sweden", optionFour: "Senegal"))

let questionTen = Questions(question: "Which of these countries won the most medals in the 2012 Summer Games?", answer: "Great Britian",
                            option: options(optionOne: "France", optionTwo: "Germany", optionThree: "Japan", optionFour: "Great Britian"))





let questionsArray = [questionOne, questionTwo, questionThree, questionFour, questionFive,
                      questionSix, questionSeven, questionEight, questionNine, questionTen

                     ]




















