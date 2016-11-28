//
//  ViewController.swift
//  LocalizationOptions
//
//  Created by Abhinav Singh on 28/11/16.
//  Copyright © 2016 Leftshift Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    weak var labelFromCodeFile: UILabel?
    @IBOutlet weak var labelFromXIBFile: UILabel?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let labelFromCode = UILabel(frame:CGRectZero)
        labelFromCode.textAlignment = .Center
        labelFromCode.translatesAutoresizingMaskIntoConstraints = false
        labelFromCode.textColor = UIColor.blackColor()
        labelFromCode.text = NSLocalizedString("This is the UILabel text from code", comment: "")
        self.view.addSubview(labelFromCode)
        
        if let xibLabel = labelFromXIBFile {
            
            let dict = ["labelFromCode":labelFromCode, "xibLabel":xibLabel]
            self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[labelFromCode]-20-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dict))
            self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[xibLabel]-20-[labelFromCode]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dict))
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

