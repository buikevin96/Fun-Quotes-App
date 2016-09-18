//
//  ViewController.swift
//  FunFacts
//
//  Created by Kevin Bui on 4/10/16.
//  Copyright © 2016 Kevin Bui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Located in the scope of the class, available throughout
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var newFactButton: UIButton!
    
    // Use () to create instance since it already has properties
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Initial text before button pressed
        funFactLabel.text = factModel.getRandomQuote()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let newColor = colorModel().getRandomColor()
        view.backgroundColor = newColor
        funFactLabel.text = factModel.getRandomQuote()
        newFactButton.tintColor = newColor

    }

}

