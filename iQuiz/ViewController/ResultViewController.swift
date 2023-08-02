//
//  ResultViewController.swift
//  iQuiz
//
//  Created by Luan Faria on 01/08/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var points: Int?

    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultPercent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLayout()
        configureResult()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        self.view.backgroundColor = UIColor.backgroundBlack
        
        restartButton.layer.cornerRadius = 12.0
    }
    
    func configureResult() {
        guard let points = points else { return }
        
        resultLabel.text = "e acertou \(points) de \(questions.count) questões"
        
        let percent = (points * 100) / questions.count
        resultPercent.text = "percentual final: \(percent)%"
    }

}
