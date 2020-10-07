//
//  SecondVC.swift
//  speedtest-7
//
//  Created by Amal Alfadhel on 10/7/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var finalName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Hello " + finalName

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
