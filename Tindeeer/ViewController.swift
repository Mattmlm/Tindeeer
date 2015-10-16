//
//  ViewController.swift
//  Tindeeer
//
//  Created by Vicki Chun on 10/14/15.
//  Copyright © 2015 Vicki Grospe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var initialCenter: CGPoint!
  
  @IBOutlet weak var profileImageView: DraggableImageView!

    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    self.profileImageView.image = UIImage(named: "ryan");
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

    @IBAction func onPanGesture(sender: UIPanGestureRecognizer) {
        let state = sender.state
        let point = sender.locationInView(self.view)
        
        switch state {
        case .Began:
            initialCenter = self.profileImageView.center;
//            print("Gesture began at: \(point)")
            
        case .Changed:
//            print("Gesture changed at: \(point)")
            let translationX = sender.translationInView(self.view).x
            profileImageView.center = CGPointMake(initialCenter.x + translationX, initialCenter.y)
            
            let isTranslationLeft = translationX > 0;
            let rotation = Int(translationX/20) * -1
            print("Rotating: \(rotation.degreesToRadians)")
            profileImageView.transform = CGAffineTransformMakeRotation(rotation.degreesToRadians);
        case .Ended:
//            print("Gesture ended at: \(point)")
            profileImageView.transform = CGAffineTransformIdentity
            profileImageView.center = CGPointMake(initialCenter.x, initialCenter.y)
            break
        default:
            break
        }

    }
}

