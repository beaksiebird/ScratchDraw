//
//  ViewController.swift
//  ScratchDraw
//
//  Created by Whitney Lauren on 5/14/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

import UIKit

var fillColors: [UIColor] = [
    UIColor.magentaColor(),
    UIColor.cyanColor(),
    UIColor.yellowColor(),
    UIColor.blackColor()
    
]

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var viewBottomConstraint: NSLayoutConstraint!
    
    
    
    
    @IBOutlet weak var fillColor: UICollectionView!
    
    
    
    
    @IBAction func clearLines(sender: AnyObject) {
        
        scratchPad.scratches = []
        scratchPad.setNeedsDisplay()
        
        
    }
    
    
    @IBOutlet weak var scratchPad : ScratchView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillColor.dataSource = self
        
        fillColor.delegate = self
        
        viewBottomConstraint.constant = -300
        
        
        
        // view.addSubview(scratchPad)
        // scratchPad.frame = view.frame
        // scratchPad.backgroundColor = UIColor.whiteColor()
        
        
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return fillColors.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("colorCell", forIndexPath: indexPath) as! ColorCell
        
        cell.backgroundColor = fillColors[indexPath.item]
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let cell = collectionView.cellForItemAtIndexPath(indexPath) as! ColorCell
        
        if let color = cell.backgroundColor {
            
            scratchPad.currentColor = color
            
        }
        
        
    }
    
    
    var currentColor = UIColor.blackColor()
    
    @IBAction func changeColor(sender: UIButton) {
        
       if let color = sender.backgroundColor {
            
            scratchPad.currentColor = color
            
            
        }
        
        
        
    }
    
    
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        if let touch = touches.first as? UITouch {
            
            let location = touch.locationInView(scratchPad)
            
            scratchPad.newScratchWithStartPoint(location)
            
            
        }
        
        
        
    }
    
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        if let touch = touches.first as? UITouch {
            
            let location = touch.locationInView(scratchPad)
            
            scratchPad.updateCurrentScratchWithLastPoint(location)
            
            //scratchPad.addPointToCurrentScratch(location)
            
            
            
            
            
        }
       
        
    }
    
    
    @IBAction func showHide(sender: AnyObject) {
        
        viewBottomConstraint.constant = (viewBottomConstraint.constant == 0) ? -300 : 0
        
    }
    
    
}




