//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Ömer Faruk Şahin on 18.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var questions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button1.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        questions += 1
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        correctAnswer = Int.random(in: 0...2)
        title = countries[correctAnswer].uppercased() + " Score: \(score)"
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var alertTitle = ""
        var alertMessage = ""
        var alertActionTitle = ""
        
        if sender.tag == correctAnswer {
            score += 1
            alertTitle = "Correct!"
            alertMessage = "Score: \(score)"
        } else {
            score -= 1
            alertTitle = "Wrong!"
            alertMessage = "That's the flag of \(countries[sender.tag].uppercased())"
        }
        
        if questions == 10 {
            alertTitle = "Final!"
            alertMessage = "Your final score is \(score)"
            alertActionTitle = "Restart"
            score = 0
        } else {
            alertActionTitle = "Continue"
        }
        
        let ac = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: alertActionTitle, style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
}

