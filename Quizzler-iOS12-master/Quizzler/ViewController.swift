//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAns: Bool = false
    var ans = QuestionBank()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let question1 = allQuestions.list[0]
        questionLabel.text = question1.question
        
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAns = true
        }
        else if sender.tag == 2{
            pickedAns = false
        }
         print(   checkAnswer(pickedAns))
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer(_ a: Bool) -> Bool {
        if a == ans.list[0].answer{
            return true
        }
        else {return false}
    }
    
    
    func startOver() {
       
    }
    

    
}
