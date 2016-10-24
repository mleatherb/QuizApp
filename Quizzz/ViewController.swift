//
//  ViewController.swift
//  Quizzz
//
//  Created by Michael Leatherbury on 10/21/16.
//  Copyright © 2016 LetterB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questionCount = -1
    var correctQuestions = 0

    

    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    @IBOutlet weak var optionThree: UIButton!
    @IBOutlet weak var optionFour: UIButton!
    @IBOutlet weak var newGame: UIButton!
    var questions = questionsArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionCount += 1
        displayQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func displayQuestion()  {
        
        optionOne.isHidden = false
        optionTwo.isHidden = false
        optionThree.isHidden = false
        optionFour.isHidden = false
        
        newGame.isHidden = true
        
        if questionCount == questionsArray.count - 1 {
            questionCount = 0
        
        } else {
            
            
            
        // Set the question text to the buttons
            
        questionText.text = questions[questionCount].question
        optionOne.setTitle(questions[questionCount].option.optionOne, for: UIControlState())
        optionTwo.setTitle(questions[questionCount].option.optionTwo, for: UIControlState())
        optionThree.setTitle(questions[questionCount].option.optionThree, for: UIControlState())
        optionFour.setTitle(questions[questionCount].option.optionFour, for: UIControlState())
            
            
        }

    }
    
    func displayScore()  {
        optionOne.isHidden = true
        optionTwo.isHidden = true
        optionThree.isHidden = true
        optionFour.isHidden = true
        
        newGame.isHidden = false
        questionText.text = "You got \(correctQuestions) out of \(questionsArray.count)\n Do you want to play again"
        


    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        
        optionOne.isHidden = true
        optionTwo.isHidden = true
        optionThree.isHidden = true
        optionFour.isHidden = true
        
        newGame.isHidden = false
        displayQuestion()
        print(questions[questionCount].question)
        
        questionCount = 0
    }
    
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        
        if sender.titleLabel?.text == questions[questionCount].answer {
            
            questionText.text = "Correct!"
            correctQuestions += 1
            
        
        } else {
        
            questionText.text = "Sorry, wrong answer"
            
        }
        print(questionCount)
        questionCount += 1
        loadNextRoundWithDelay(seconds: 2)
        
    }
    
    func nextRound() {
        if questionCount == 9 {
            // Game is over
            displayScore()
        } else {
            // Continue game
            displayQuestion()
        }
    }
    
    func loadNextRoundWithDelay(seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
           self.nextRound()
        }
    }

}






// TODO: Figure out why it's only using 8 questions
// TODO: Setup AutoLayout constraints












