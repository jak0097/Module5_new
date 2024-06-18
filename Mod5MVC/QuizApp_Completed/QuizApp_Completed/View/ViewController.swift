//
//  ViewController.swift
//  QuizApp_Completed
//




import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizlogic = QuizLogic()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerSubmitted(_ sender: UIButton) {
        // get user response
        let userAnswer = sender.titleLabel!.text!
        
        quizlogic.updateCurrentQuestion(userAnswer)
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        if quizlogic.checkReset() {
            questionLabel.text = quizlogic.getNextQuestion()
            background.image = UIImage(named: quizlogic.getImageName())
            buttonOne.setTitle(quizlogic.getChoiceOne(), for: .normal)
            buttonTwo.setTitle(quizlogic.getChoiceTwo(), for: .normal)
            
            buttonOne.backgroundColor = UIColor.clear
            buttonTwo.isHidden = true
        }
        else {
            questionLabel.text = quizlogic.getNextQuestion()
            background.image = UIImage(named: quizlogic.getImageName())
            buttonOne.setTitle(quizlogic.getChoiceOne(), for: .normal)
            buttonTwo.setTitle(quizlogic.getChoiceTwo(), for: .normal)
            
            buttonOne.backgroundColor = UIColor.clear
            buttonTwo.isHidden = false
            buttonTwo.backgroundColor = UIColor.clear
        }
    }

}

