//
//  Int+DegreeToRadians.swift
//  Tindeeer
//
//  Created by admin on 10/14/15.
//  Copyright © 2015 Vicki Grospe. All rights reserved.
//

import UIKit

extension Int {
    var degreesToRadians : CGFloat {
        return CGFloat(self) * CGFloat(M_PI) / 180.0
    }
}
/*
45.degreesToRadians   // 0.785398163397448
*/