//
//  ViewController.swift
//  Swift5CountUp
//
//  Created by 中條航紀 on 2020/02/23.
//  Copyright © 2020 中條航紀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = String(count)
    }
    
    @IBAction func plus(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
        
        if count >= 10 {
            ChangeTextColor()
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
        count = count - 1
        countLabel.text = String(count)
        
        if count <= 9 {
            resetColor()
        }
    }
    
    func ChangeTextColor() {
        countLabel.textColor = .yellow
    }
    
    func resetColor() {
        countLabel.textColor = .white
    }


}

