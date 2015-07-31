//
//  ViewController.swift
//  simpleApp
//
//  Created by Nano on 30/07/2015.
//  Copyright (c) 2015 Self Taught iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // create an instant object from the struct in Factbook.swift and ColorWheel.siwft
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    
    @IBOutlet weak var funcFactButton: UIButton!

    @IBAction func showFunFact(sender: AnyObject) {

    // this is an IBAction, when user click on the button it will run the following code
    // the label text will randomly generate a fact from the randomFact function in Factbook.swift
        
        var randomColor = colorWheel.randomColor()
        
        
        funFactLabel.text = factBook.randomFact()
        
        //generate a randomcolor when button is pressed
        view.backgroundColor = randomColor
        
        funcFactButton.tintColor = randomColor
        
        
    }
    
    @IBOutlet weak var funFactLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        

        //when the view is loaded, generate a random Fact in the label
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

