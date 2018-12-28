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
    var questionNumber: Int = 0
    var score: Int = 0
    var progress: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let question1 = allQuestions.list[0]
//        questionLabel.text = question1.question
        
        nextQuestion()
        
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAns = true
        }
        else if sender.tag == 2{
            pickedAns = false
        }
        checkAnswer()
        questionNumber+=1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber+1)/\(allQuestions.list.count)"
        progressBar.frame.size.width = (view.frame.size.width/15)*CGFloat(questionNumber+1)
    }
    

    func nextQuestion() {
       
        
        if questionNumber <= allQuestions.list.count-1{
             questionLabel.text = allQuestions.list[questionNumber].question
            progress+=1
            updateUI()
            
    }
        else {
            
            let alert = UIAlertController(title: "Chương trình tới đây là hết dồi", message: "Chơi lại hen em :v", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
                //self.updateUI()
            }
           
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
     }
           
        }
    
    
    func checkAnswer(){
        
        if allQuestions.list[questionNumber].answer == pickedAns{
            ProgressHUD.showSuccess("Chúc mừng em. Đúng oy!!")
            score+=1
            
           
            
        }
        else  {
            ProgressHUD.showError("Ớ ầu, sai goy sai goy!!!")
        }
    }
    
    
//    func checkAnswer(_ a: Bool) -> Bool {
//        if a == ans.list[0].answer{
//            return true
//        }
//        else {return false}
//    }
    
    
    func startOver() {
//        if questionNumber > allQuestions.list.count{
//            print("stop")
        questionNumber = 0
        score = 0
        progress = 0
        nextQuestion()
        }
    }
    

    

