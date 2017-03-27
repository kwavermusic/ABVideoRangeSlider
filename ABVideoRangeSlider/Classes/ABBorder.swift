//
//  ABBorder.swift
//  selfband
//
//  Created by Oscar J. Irun on 27/11/16.
//  Copyright © 2016 appsboulevard. All rights reserved.
//

import UIKit

class ABBorder: UIView {
    
    var imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let bundle = Bundle(for: ABStartIndicator.self)
        let image = UIImage(named: "BorderLine", in: bundle, compatibleWith: nil)
        
        imageView.frame = CGRect(x:-2,y:1, width:self.bounds.size.width + 4,height:3)
        imageView.contentMode = UIViewContentMode.scaleToFill
        imageView.layer.cornerRadius = 1.5
        imageView.clipsToBounds = true
        self.addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(x:-2,y:1, width:self.bounds.size.width + 4,height:3)
    }
    
}
