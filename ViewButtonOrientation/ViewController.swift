//
//  ViewController.swift
//  ViewButtonOrientation
//
//  Created by Dom Bryan on 21/05/2015.
//  Copyright (c) 2015 Dom Bryan. All rights reserved.
//

import UIKit

var presses = 1

class ViewController: UIViewController {

    
    
    @IBOutlet weak var setOrientationButton: UIButton!
    
    @IBAction func setOrientationForNewView(sender: AnyObject) {
        if presses == 1 {
            setOrientationButton.setTitle("Portrait", forState: .Normal)
            presses++
            
        } else {
            setOrientationButton.setTitle("Landscape", forState: .Normal)
            presses--
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        let value = UIInterfaceOrientation.Portrait.rawValue
        UIDevice.currentDevice().setValue(value, forKey: "orientation")
        
        setOrientationButton.setTitle("Landscape", forState: .Normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

