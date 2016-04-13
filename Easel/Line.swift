//
//  Line.swift
//  Easel
//
//  Created by Justin Smith on 4/12/16.
//  Copyright © 2016 Justin Smith. All rights reserved.
//

import Foundation
import UIKit

class Line
{
    var start: CGPoint?
    var end: CGPoint?
    
    init (start: CGPoint, end: CGPoint)
    {
        self.start = start
        self.end = end
    }
}