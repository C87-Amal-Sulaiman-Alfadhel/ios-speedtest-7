//
//  ViewController.swift
//  speedtest-7
//
//  Created by Safeyah on 6/13/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    

    var nameText = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Hint: `performSegue` is the way
    

    @IBAction func button(_ sender: Any) {
        if textField.text!.count >= 2{
            self.nameText = textField.text!
        performSegue(withIdentifier: "segue", sender: nil)
    }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondVC
        vc.finalName = self.nameText
    } 
    
}

