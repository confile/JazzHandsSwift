//
//  View+MGKeyFrameAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit


public extension UIView {
  
  
  public func mg_makeAnimation(animator: IFTTTAnimator, @noescape closure: (make: MGAnimationConstraintMaker) -> Void) {
    MGAnimationConstraintMaker.makeAnimation(self, animator: animator, closure: closure)
  }

  

  
  
  
}