//
//  ViewController.swift
//  iQuiz
//
//  Created by Luan Faria on 31/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonInitQuiz: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Button was pressed!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        
        self.view.backgroundColor = UIColor.backgroundBlack
        buttonInitQuiz.layer
            .cornerRadius = 12.0
    }


}

