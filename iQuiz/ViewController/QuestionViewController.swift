//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Luan Faria on 31/07/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var points = 0
    var questionNumber = 0
    
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet var responseButton: [UIButton]!
    
    @IBAction func pressedButtonResponse(_ sender: UIButton) {
        let rightResponse = questions[questionNumber].rightResponse
        
        if sender.tag == rightResponse {
            points += 1
            
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        } else {
            navigateToResultPage()
        }
        
        
    }
    
    func navigateToResultPage() {
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLayout()
        configureQuestion()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        self.view.backgroundColor = UIColor.backgroundBlack
        
        labelQuestion.numberOfLines = 0
        labelQuestion.textAlignment = .center
        
        for button in responseButton {
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configureQuestion() {
        labelQuestion.text = questions[questionNumber].title
        
        for button in responseButton {
            let buttonTitle = questions[questionNumber].response[button.tag]
            
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        
        resultVC.points = points
    }
}
