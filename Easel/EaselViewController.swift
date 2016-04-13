//
//  ViewController.swift
//  Easel
//
//  Created by Justin Smith on 3/22/16.
//  Copyright © 2016 Justin Smith. All rights reserved.
//

import UIKit
import MapKit

class EaselViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var undoButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var brushPreview: UIImageView!
    @IBOutlet weak var settingsViewBottomConstraint: NSLayoutConstraint!
    var imagePicker: UIImagePickerController!
    
    var lines: [UIImage] = []
    var lastPoint = CGPoint.zero
    var linePoints: [Line] = []
    var drawing: [[UIImage]] = []
    
    
    var imageView2 = UIImageView()
    var strokeColor = UIColor.redColor()
    var lineWidth: CGFloat = 8.0
    var lastBrushSize: CGFloat = 8.0
    var minimizeSettingsConstant = -232
    var clear = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBrushPreview()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBarHidden = true
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(appBecameActive), name: UIApplicationDidBecomeActiveNotification, object: nil)
    }
    
    func appBecameActive()
    {
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if let touch = touches.first
        {
            let point = touch.locationInView(self.imageView)
            self.lastPoint = point
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first
        {
            let newPoint = touch.locationInView(self.imageView)
            
            drawBetweenPoints(self.lastPoint, newPoint: newPoint)
            
            self.lastPoint = newPoint
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            
            let newPoint = touch.locationInView(self.imageView)
            print(newPoint)
            
            self.linePoints = []
            
            let image = UIGraphicsGetImageFromCurrentImageContext()
            self.lines.append(image)
            self.drawing.append(lines)
            
            draw()
            
            self.lastPoint = newPoint
            print(linePoints)
        }
    }
    
    func drawBetweenPoints(lastPoint: CGPoint, newPoint: CGPoint)
    {
        UIGraphicsBeginImageContext(self.imageView.frame.size)
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSetStrokeColorWithColor(context, strokeColor.CGColor)
        CGContextSetLineWidth(context, lineWidth)
        CGContextSetLineCap(context, .Round)
        
        self.imageView.image?.drawInRect(CGRect(x: 0, y: 0, width: self.imageView.frame.size.width, height: self.imageView.frame.size.height), blendMode: CGBlendMode.Normal, alpha: 1.0)
        
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, lastPoint.x, lastPoint.y)
        CGContextAddLineToPoint(context, newPoint.x, newPoint.y)
        CGContextStrokePath(context)
        
        self.imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        
    }
    
    func draw()
    {
        self.imageView.image = self.lines.last
        print(self.lines)
    }
    
    @IBAction func colorButtonTapped(sender: UIButton)
    {
        switch sender.accessibilityIdentifier! {
        case "red":
            self.clear = false
            self.strokeColor = UIColor.red()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "orange":
            self.clear = false
            self.strokeColor = UIColor.orange()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "lightRed":
            self.clear = false
            self.strokeColor = UIColor.lightRed()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "copper":
            self.clear = false
            self.strokeColor = UIColor.copper()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "yellow":
            self.clear = false
            self.strokeColor = UIColor.yellow()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "lightGreen":
            self.clear = false
            self.strokeColor = UIColor.lightGreen()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "limeGreen":
            self.clear = false
            self.strokeColor = UIColor.limeGreen()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "green":
            self.clear = false
            self.strokeColor = UIColor.green()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "lightBlue":
            self.clear = false
            self.strokeColor = UIColor.lightBlue()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "babyBlue":
            self.clear = false
            self.strokeColor = UIColor.babyBlue()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "blue":
            self.clear = false
            self.strokeColor = UIColor.blue()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "lightPurple":
            self.clear = false
            self.strokeColor = UIColor.lightPurple()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "purple":
            self.clear = false
            self.strokeColor = UIColor.purple()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "lightPink":
            self.clear = false
            self.strokeColor = UIColor.lightPink()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "pink":
            self.clear = false
            self.strokeColor = UIColor.pink()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "brown":
            self.clear = false
            self.strokeColor = UIColor.brown()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "black":
            self.clear = false
            self.strokeColor = UIColor.blackColor()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        case "white":
            self.clear = false
            self.strokeColor = UIColor.whiteColor()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
            break
        default:
            self.clear = false
            self.strokeColor = .whiteColor()
            self.lineWidth = lastBrushSize
            self.slider.value = Float(lastBrushSize)
        }
        
        updateBrushPreview()
        settingsViewBottomConstraint.constant = -232
    }
    
    @IBAction func undoButtonTapped(sender: AnyObject)
    {
        if drawing.count > 1
        {
            self.drawing.removeLast()
            self.lines = self.drawing.last!
            draw()
        }
        else
        {
            self.drawing = []
            self.lines = []
            imageView.image = nil
        }
    }
    
    @IBAction func eraseButtonTapped(sender: UIButton)
    {
        self.strokeColor = .whiteColor()
    }
    
    @IBAction func eraseAllButtonTapped(sender: AnyObject)
    {
        self.imageView.image = nil
        updateSettingsView()
    }
    
    @IBAction func shareButtonTapped(sender: AnyObject)
    {
        if let image = self.imageView.image
        {
            let activityController = UIActivityViewController(activityItems: [image], applicationActivities: [])
            self.presentViewController(activityController, animated: true, completion: nil)
        }
    }
    
    @IBAction func settingsButtonTapped(sender: AnyObject)
    {
        updateSettingsView()
    }
    
    func updateSettingsView()
    {
        if settingsViewBottomConstraint.constant == -232.0
        {
            imageView.userInteractionEnabled = false
            UIView.animateWithDuration(0.8, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 2.0, options: [], animations: {
                self.settingsView.backgroundColor = UIColor(red: 175/255, green: 175/255, blue: 175/255, alpha: 0.8)
                self.settingsViewBottomConstraint.constant = 0
                self.view.layoutIfNeeded()
                }, completion: nil)
        } else {
            imageView.userInteractionEnabled = true
            UIView.animateWithDuration(0.8, delay: 0.0, usingSpringWithDamping: 0.73, initialSpringVelocity: 2.0, options: [], animations: {
                self.settingsView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.0)
                self.settingsViewBottomConstraint.constant = -232.0
                self.view.layoutIfNeeded()
                }, completion: nil)
        }
    }
    
    func eraseEasel()
    {
        self.imageView.image = nil
    }
}

/*****************/
/***  SLIDER   ***/
/*****************/

extension EaselViewController
{
    @IBAction func sliderValueChanged(sender: UISlider)
    {
        self.lineWidth = CGFloat(sender.value)
        self.lastBrushSize = CGFloat(sender.value)
        updateBrushPreview()
    }
    
    func updateBrushPreview()
    {
        dispatch_async(dispatch_get_main_queue()) {
            UIGraphicsBeginImageContext(self.brushPreview.frame.size)
            let context = UIGraphicsGetCurrentContext()
            CGContextSetLineCap(context, CGLineCap.Round)
            CGContextSetLineWidth(context, self.lineWidth)
            CGContextSetStrokeColorWithColor(context, self.strokeColor.CGColor)
            CGContextMoveToPoint(context, 20, 20)
            CGContextAddLineToPoint(context, 20, 20)
            CGContextStrokePath(context)
            self.brushPreview.image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
        }
    }
}

extension EaselViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    @IBAction func cameraButtonTapped(sender: AnyObject)
    {
        self.imagePicker = UIImagePickerController()
        self.imagePicker.delegate = self
        self.imagePicker.sourceType = .Camera
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        self.imagePicker.dismissViewControllerAnimated(true, completion: nil)
        self.imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        if let image = self.imageView.image
        {
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        }
    }
}

