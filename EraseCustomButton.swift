//
//  EraseCustomButton.swift
//  Easel
//
//  Created by Justin Smith on 3/23/16.
//  Copyright © 2016 Justin Smith. All rights reserved.
//

import UIKit

class EraseCustomButton: UIButton
{
    @IBInspectable var cornerRadius: CGFloat = 20 {
        didSet {
            setupViews()
        }
    }
    
    func changeBackgroundColor(color: UIColor)
    {
        self.backgroundColor = color
    }
    
    override func awakeFromNib() {
        setupViews()
        self.addTarget(self, action: #selector(subtractAlpha), forControlEvents: .TouchDown)
        self.addTarget(self, action: #selector(addAlpha), forControlEvents: .TouchUpInside)
        self.addTarget(self, action: #selector(addAlpha), forControlEvents: .TouchDragExit)
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupViews()
    }
    
    func setupViews()
    {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    func subtractAlpha()
    {
        self.alpha = 0.8
        self.transform = CGAffineTransformMakeScale(1.5, 1.5)
    }
    
    func addAlpha()
    {
        self.alpha = 1.0
        self.transform = CGAffineTransformMakeScale(1.0, 1.0)
    }
}