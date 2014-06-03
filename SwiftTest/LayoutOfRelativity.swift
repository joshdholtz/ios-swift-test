//
//  LayoutOfRelativity.swift
//  SwiftTest
//
//  Created by Josh Holtz on 6/2/14.
//  Copyright (c) 2014 RokkinCat. All rights reserved.
//

import UIKit

extension UIView {
    
    func placeBelow(view : UIView, offset : CGFloat) {
        self.frame.origin.y = CGRectGetMaxY(view.frame) + offset;
    }
    
}