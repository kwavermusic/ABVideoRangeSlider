//
//  ABStartIndicator.swift
//  selfband
//
//  Created by Oscar J. Irun on 27/11/16.
//  Copyright © 2016 appsboulevard. All rights reserved.
//

import UIKit

class ABEndIndicator: UIView {
    
    public var imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
        
        let bundle = Bundle(for: ABStartIndicator.self)
        let image = UIImage(named: "EndIndicator", in: bundle, compatibleWith: nil)
        
        imageView.frame = CGRect(x:-2,y:2,width:4,height:46)
        imageView.image = image
        imageView.contentMode = UIViewContentMode.scaleToFill
        imageView.layer.cornerRadius = 2
        imageView.clipsToBounds = true
        self.addSubview(imageView)
        
        // Gradient Layer
        let myGradientLayer = CAGradientLayer()
        myGradientLayer.colors = [UIColor(red: 11.0/255, green: 228.0/255, blue: 125.0/255, alpha: 1.0).cgColor,
                                  UIColor(red: 0.0/255, green: 186.0/255, blue: 177.0/255, alpha: 1.0).cgColor]
        myGradientLayer.frame = CGRect(x:0,y:0,width:imageView.frame.size.width,height:imageView.frame.size.height)
        myGradientLayer.startPoint = CGPoint(x: 0, y: 0)
        myGradientLayer.endPoint = CGPoint(x: 0, y: 1)
        imageView.layer.addSublayer(myGradientLayer)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
