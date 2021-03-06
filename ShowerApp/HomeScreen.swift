//
//  FirstViewController.swift
//  ShowerApp
//
//  Created by Ashley Lee on 4/15/15.
//  Copyright (c) 2015 Ashley Lee. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var showerSlider: UISlider!
    @IBOutlet weak var showerTimeLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setShowerTime(sender: AnyObject) {
        let sliderValue = NSNumber(integer: Int(showerSlider.value)) //make slider value into integer value
        if sender is UISlider {
            showerTimeLabel.text = NSNumberFormatter.localizedStringFromNumber(sliderValue, numberStyle: NSNumberFormatterStyle.NoStyle) + " minutes"//update the Labels with new slider value
      }
        
        else { //clear label
            showerTimeLabel.text = ""
        }
    }
    @IBAction func startButtonPressed() {
        NSLog("Button Pressed")
}
    }

