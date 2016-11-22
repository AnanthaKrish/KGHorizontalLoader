//
//  KGHorizontalLoader.swift
//  KGHorizontalLoader
//
//  Created by Anantha Krishnan K G on 15/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit

@IBDesignable
open class KGHorizontalLoader: UIView {
    
    fileprivate var lineLoadingView: UIView!
    fileprivate var isAnimating: Bool = false
    fileprivate var count: CGFloat = 0.0
    
    @IBInspectable
    public var backgroundLineColor:UIColor = UIColor.gray {
        didSet {
            setLayout()
        }
    }
    
    @IBInspectable
    public var backgroundLoaderColor:UIColor = UIColor.green {
        didSet {
            setLayout()
        }
    }
    
    @IBInspectable
    public var rateOfLoading:CGFloat = 20 {
        didSet {
            setLayout()
        }
    }
    
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }
    fileprivate func setLayout(){
        self.lineLoadingView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: self.frame.size.height))
        loadColors()
        
    }
    
    fileprivate func loadColors(){
        self.backgroundColor = self.backgroundLineColor
        self.lineLoadingView.backgroundColor = self.backgroundLoaderColor
        self.isHidden = false;
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        
        self.frame = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: UIScreen.main.bounds.width, height: self.frame.height))
        
    }
    
    open func startAnimation(){
        
        if !isAnimating {
            self.isHidden = false;
            self.isAnimating = true
            self.addSubview(self.lineLoadingView)
            count = 0;
            self.configureAnimation()
        }
    }
    
    open func stopAnimation(){
        
        self.isAnimating = false
        
        UIView.animate(withDuration: 0.1, animations: {
            self.isHidden = true;
            self.willRemoveSubview(self.lineLoadingView)

        })
    }
    
    fileprivate func configureAnimation() {
        
        count+=1
        print(count)
        
        if count == 1 {
            self.lineLoadingView.frame = CGRect(origin: CGPoint(x: 0, y: self.frame.origin.y), size: CGSize(width: 0, height: self.frame.size.height))
            
        }
        
        UIView.animateKeyframes(withDuration: 1.0, delay: 0, options: [], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5, animations: {
                self.lineLoadingView.frame = CGRect(x: 0 , y: 0, width: self.rateOfLoading * self.count , height: self.frame.size.height)
            })
            
        }) { (completed) in
            if (self.isAnimating && self.count <= UIScreen.main.bounds.width){
                self.configureAnimation()
            } else{
                self.stopAnimation()
            }
        }
    }
    
}
