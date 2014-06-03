//
//  ViewController.swift
//  SwiftTest
//
//  Created by Josh Holtz on 6/2/14.
//  Copyright (c) 2014 RokkinCat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creating a label
        var label : UILabel = UILabel(frame: CGRect(x: 10, y: 10, width: CGRectGetWidth(self.view.bounds), height: 40));
        label.center = self.view.center;
        label.textAlignment = NSTextAlignment.Center; // This is different
        label.text = "Omg I set a label";
        
        // Adding a label as a subview to the view
        self.view.addSubview(label);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

