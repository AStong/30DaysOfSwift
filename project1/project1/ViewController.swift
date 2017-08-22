//
//  ViewController.swift
//  project1
//
//  Created by ASong on 2017/8/22.
//  Copyright © 2017年 ASong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var palyBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    
    
    @IBOutlet weak var timelable: UILabel!
    
    
    var Counter = 0.0
    var timer: Timer?
    var isPlaying = false
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.timelable.text = String(Counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playButtonDidTouch(_ sender: Any) {
        if self.isPlaying {
            return
        }
        
        palyBtn.isEnabled = false
        pauseBtn.isEnabled = true
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            self.Counter += 0.1
            self.timelable.text = String(self.Counter)
            
            
        })
        self.isPlaying = true
    }


   
    @IBAction func pauseuttonDidTouch(_ sender: Any) {
        timer?.invalidate()
        self.isPlaying = false
        pauseBtn.isEnabled = false
        palyBtn.isEnabled = true
    }
    
    @IBAction func resetButtonDidTouch(_ sender: Any) {
        
        palyBtn.isEnabled = true
        pauseBtn.isEnabled = false
        timer?.invalidate()
        Counter = 0.0
        timelable.text = String(Counter)
        isPlaying = false
    }
    
}

