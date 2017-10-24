//
//  ViewController.swift
//  Is It Prime
//
//  Created by Leo Rubiano on 10/24/17.
//  Copyright © 2017 leofofeo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var resultDisplayLabel: UILabel!
    
    @IBOutlet weak var userNumberTextField: UITextField!
    
    
    @IBAction func userCheckButton(_ sender: Any) {
        
        
        //move this to its own function
        if let userNumber = Int(userNumberTextField.text!) {
            
            if userNumber == 2 {
                resultDisplayLabel.text = "It's prime!"
                return
            }
            
            if userNumber == 3 {
                resultDisplayLabel.text = "It's prime!"
                return
            }
            
            if userNumber % 2 == 0 {
                resultDisplayLabel.text = "It's not prime!"
                return
            }
            
            if userNumber % 3 == 0 {
                resultDisplayLabel.text = "It's not prime!"
                return
            }
            
            var i = 5
            var w = 2
            
            while i * i <= userNumber{
                if userNumber % i == 0 {
                    resultDisplayLabel.text = "It's not prime!"
                }
                
                i += w
                
                w = 6 - w
            }
            
            resultDisplayLabel.text = "It's prime!"
            return
            
        } else {
            resultDisplayLabel.text = "Please enter a valid value."
        }
        
        
    }
    
}

