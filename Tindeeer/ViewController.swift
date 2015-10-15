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

  @IBOutlet weak var profileImageView: UIImageView!
  
  @IBAction func onPanGesture(sender: UIPanGestureRecognizer) {
    let state = sender.state
//    let point = sender.locationInView(self.view)
    
    switch state {
      case .Began:
        initialCenter = self.profileImageView.center;
        
      case .Changed:
        let translationX = sender.translationInView(self.view).x
        profileImageView.center = CGPointMake(initialCenter.x + translationX, initialCenter.y)
      case .Ended:
        break
      default:
        break
      }
    
  }
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

