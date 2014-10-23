//
//  ViewController.swift
//  GetTime
//
//  Created by Justine Clarke on 10/23/14.
//  Copyright (c) 2014 Jussic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timeCount = 0
    var timeRunning = false
    var timer = NSTimer()

    @IBOutlet weak var timeLabel: UILabel!
    func counting ()
    {
        timeCount += 1
        timeLabel.text = "\(timeCount)"
    }
    
    @IBAction func startButton(sender: UIButton) {
        if timeRunning == false
        { timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
            timeRunning = true
        }
    }
    
 
    @IBAction func stopButton(sender: UIButton) {
        
        if timeRunning == true
        {   timer.invalidate ()
            timeRunning = false
        }
    }
    

    
    @IBAction func restartButton(sender: UIButton) {
        timeCount = 0
        timeLabel.text = "0"
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

