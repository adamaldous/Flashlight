//
//  ViewController.swift
//  Flashlight
//
//  Created by Caleb Hicks on 9/23/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var isOn = true
    
    @IBAction func buttonTapped(sender: AnyObject) {
        if isOn {
            self.view.backgroundColor = UIColor.whiteColor()
            button.setTitle("OFF", forState: UIControlState.Normal)
            isOn = false
        } else {
            self.view.backgroundColor = UIColor.blackColor()
            button.setTitle("ON", forState: UIControlState.Normal)
            isOn = true
        }
    }
}