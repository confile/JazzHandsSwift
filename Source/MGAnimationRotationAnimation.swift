//
//  MGAnimationAngleAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationRotationAnimation {
  
  public struct InternalObject {
    var angle: CGFloat
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [CGFloat : InternalObject] = [CGFloat : InternalObject]()
  
  /**
  Add keyframe with time and angle (degrees).
  */
  public func add(time: CGFloat, angle: CGFloat, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(angle: angle, easing: easing)
  }
  
  public func add(time: CGFloat, angle: CGFloat) {
    add(time, angle: angle, easing: nil)
  }
  
  
}