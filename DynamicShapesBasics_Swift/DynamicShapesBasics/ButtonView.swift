//
//  ButtonView.swift
//  DynamicShapesBasics
//
//  Created by Matej Dunik on 05/01/15.
//  Copyright (c) 2015 company. All rights reserved.
//

import UIKit

class ButtonView: UIView {

    var image: UIImage? {
        didSet {
            if imageView == nil {
                imageView = UIImageView()
                imageView?.backgroundColor = .clear
                imageView?.layer.masksToBounds = true
                self.insertSubview(imageView!, at: 0)
            }
            imageView?.image = image
        }
    }

    private var imageView: UIImageView?
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {

        JLXStyleKit.drawBubbleButton(frame: self.bounds)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

//        imageView?.frame = CGRect(x: self.bounds.width * 1 / 38.0, y: self.bounds.width * 1 / 38.0, width: self.bounds.width * 36 / 38.0, height: self.bounds.width * 36 / 38.0)
        imageView?.frame = CGRect(x: self.bounds.width * 0.5 / 38.0, y: self.bounds.width * 0.5 / 38.0, width: self.bounds.width * 37 / 38.0, height: self.bounds.width * 37 / 38.0)
        imageView?.layer.cornerRadius = bounds.width / 2.0
    }


}
