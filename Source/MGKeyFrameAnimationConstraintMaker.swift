//
//  MGKeyFrameAnimationConstraintMaker.swift
//  TourTest
//
//  Created by Michael Gorski on 04.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGKeyFrameAnimationConstraintMaker {
  
  public var frame: MGKeyFrameAnimationEasing {
    return self.makeConstraintDescription(MGKeyFrameAnimationFrameAnimation())
  }
  
  private var constraints = [MGKeyFrameAnimationEasing]()
  
  
  internal class func makeAnimation(view: UIView, animator: IFTTTAnimator, @noescape closure: (make: MGKeyFrameAnimationConstraintMaker) -> Void) {
    
    
  }
  
  
  internal func makeConstraintDescription(animation: MGKeyFrameAnimationBaseAnimation) -> MGKeyFrameAnimationEasing {
    let easing = MGKeyFrameAnimationEasing(animation: animation)
    self.constraints.append(easing)
    return easing
  }
  
  
  
}