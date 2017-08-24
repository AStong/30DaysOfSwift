//
//  ViewController.swift
//  project3-ChildViewControllers
//
//  Created by ASong on 2017/8/24.
//  Copyright © 2017年 ASong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let menuheight = 35.0
    
    let firstVC = UIViewController()
    let seconVC = UIViewController()
    
    let screenHeight = Double(UIScreen.main.bounds.size.height)
    let screenWidth = Double(UIScreen.main.bounds.size.width)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //配置菜单按钮
        configureBaseView()
        
        addChildVC()
    }

    
    func configureBaseView() {
        
        let firstBtn = UIButton(type: .custom)
        firstBtn.frame = CGRect(x: 0.0, y: screenHeight - menuheight, width: screenWidth/2, height: menuheight)
        firstBtn.backgroundColor = .gray
        firstBtn.setTitle("first VC", for: .normal)
        firstBtn.addTarget(self, action: #selector(firstButtonDidTouched(_:)), for: .touchUpInside)
        view.addSubview(firstBtn)
        
        let secondBtn = UIButton(type: .custom)
        secondBtn.frame = CGRect(x: screenWidth/2, y: screenHeight - menuheight, width: screenWidth/2, height: menuheight)
        secondBtn.backgroundColor = .lightGray
        secondBtn.setTitle("second VC", for: .normal)
        secondBtn.addTarget(self, action: #selector(secondButtonDidTouched(_:)), for: .touchUpInside)
        view.addSubview(secondBtn)
        
        
    }
    
    
    func addChildVC() {
        firstVC.view.backgroundColor = UIColor.brown
        self.addChildViewController(firstVC)
        firstVC.didMove(toParentViewController: self)
        firstVC.view.frame = CGRect(x: screenWidth/2, y: screenHeight/2, width: 0 , height: 0)
        view.addSubview(firstVC.view)
        
        seconVC.view.backgroundColor = UIColor.cyan
        addChildViewController(seconVC)
        seconVC.didMove(toParentViewController: self)
        seconVC.view.frame = CGRect(x: 0, y: 100, width:screenWidth, height: 300)
        view.addSubview(seconVC.view)
        
        
    }
 
    

}

extension ViewController {
    
    
    @objc fileprivate func firstButtonDidTouched(_ button: UIButton) {
     

        self.transition(from: seconVC, to: firstVC, duration: 0.25, options: UIViewAnimationOptions.preferredFramesPerSecond60, animations: {
            
           self.firstVC.view.frame = CGRect(x: 0, y: 100, width: self.screenWidth , height: 300)

            
        }) { (complete) in
        }
    }
    
    @objc fileprivate func secondButtonDidTouched(_ button: UIButton) {
       
        self.transition(from: firstVC, to: seconVC, duration: 1, options: UIViewAnimationOptions.transitionFlipFromRight, animations: {
            
        }) { (complete) in
            self.firstVC.view.frame = CGRect(x: self.screenWidth/2, y: self.screenHeight/2, width: 0 , height: 0)

        }

    }
}

