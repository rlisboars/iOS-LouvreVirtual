//
//  RoundedImage.swift
//  LouvreVirtual
//
//  Created by Swift on 13/06/17.
//  Copyright © 2017 rlisboars. All rights reserved.
//

import UIKit

@IBDesignable class RoundedImage: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var asCircle: Bool = false {
        didSet {
            if asCircle {
                self.layer.cornerRadius = self.frame.size.height / 2
            }
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .white {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
