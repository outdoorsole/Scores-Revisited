//
//  ViewController.swift
//  Scores-Revisited
//
//  Created by Maribel Montejano on 10/17/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Outlets
    @IBOutlet weak var giantsScoreLabel: UILabel!
    @IBOutlet weak var visitorScoreLabel: UILabel!
    @IBOutlet weak var winningTeamLabel: UILabel!
    @IBOutlet weak var giantsScoreTextField: UITextField!
    @IBOutlet weak var visitorScoreTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set the View Controller as the delegate
        giantsScoreTextField.delegate = self
        visitorScoreTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: IBActions
    @IBAction func whoWon(_ sender: UIButton) {
        let giantsScore: Int = Int(giantsScoreLabel.text!)!
        let visitorScore: Int = Int(visitorScoreLabel.text!)!
        
        if giantsScore < visitorScore {
            winningTeamLabel.text = "Visitor"
        } else if giantsScore > visitorScore {
            winningTeamLabel.text = "Giants"
        } else {
            winningTeamLabel.text = "Tie"
        }
    }
    
    // MARK: Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        giantsScoreTextField.resignFirstResponder()
        visitorScoreTextField.resignFirstResponder()
        return true
    }

}

