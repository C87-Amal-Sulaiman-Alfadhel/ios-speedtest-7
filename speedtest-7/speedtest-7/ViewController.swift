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
        } else {
            let alertController = UIAlertController(title: "You did not enter a valid name", message: "Click the button to add a name", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Go back", style: .cancel) { (alert) in
                self
            }
            alertController.addAction(restartAction)
            present(alertController, animated: true, completion: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondVC
        vc.finalName = self.nameText
    } 
    
}

