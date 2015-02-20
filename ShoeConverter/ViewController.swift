//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Arnab Sinha on 2/20/15.
//  Copyright (c) 2015 Arnab Sinha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet var womensShoeSizeTextField: UITextField!
    @IBOutlet var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size."

    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double ((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe size."
        
    }
}

