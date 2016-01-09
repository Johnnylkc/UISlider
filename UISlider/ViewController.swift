//
//  ViewController.swift
//  UISlider
//
//  Created by 劉坤昶 on 2016/1/9.
//  Copyright © 2016年 劉坤昶 Johnny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var slider = UISlider()
    var resultLabel = UILabel()

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        slider.frame = CGRectMake(0, 0, 300, 30)
        slider.center = CGPointMake(self.view.frame.size.width/2, 100)
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.addTarget(self, action: "changeLabelText:", forControlEvents: .TouchDragInside)
        self.view.addSubview(slider)
        
        resultLabel.frame = CGRectMake(0, 0, 50, 30)
        resultLabel.center = CGPointMake(self.view.frame.size.width/2, 150)
        resultLabel.textAlignment = .Center
        resultLabel.font = UIFont.boldSystemFontOfSize(30)
        resultLabel.textColor = UIColor.orangeColor()
        resultLabel.text = "0"
        self.view.addSubview(resultLabel)
    
    
    }
    
    func changeLabelText(sender:UISlider)
    {
        let finalValue = Int(sender.value)
        resultLabel.text = "\(finalValue)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

