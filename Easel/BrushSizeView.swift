//
//  BrushSizeView.swift
//  Easel
//
//  Created by Justin Smith on 3/23/16.
//  Copyright © 2016 Justin Smith. All rights reserved.
//

import UIKit

@IBDesignable
class BrushSizeView: UIView
{
    @IBInspectable var cornerRadius: CGFloat = 20 {
        didSet {
            setupView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        setupView()
    }
    
    func setupView()
    {
        self.layer.cornerRadius = cornerRadius
    }
}
