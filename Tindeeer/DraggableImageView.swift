//
//  DraggableImageView.swift
//  Tindeeer
//
//  Created by admin on 10/14/15.
//  Copyright © 2015 Vicki Grospe. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    var caption: String? {
        get { return titleLabel.text }
        set { titleLabel.text = newValue }
    }
    
    var image: UIImage? {
        get { return imageView.image }
        set { imageView.image = newValue }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
            
            // custom initialization logic
    }
    
    func handlePanGesture(panGesture: UIPanGestureRecognizer) {
    }
    
}
