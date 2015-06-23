//
//  MGAnimationAngleAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationAngleAnimation {
  
  public struct InternalObject {
    var angle: CGFloat
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [Int : InternalObject] = [Int : InternalObject]()
  
  /**
  Add keyframe with time and angle (radians).
  */
  public func add(time: Int, angle: CGFloat, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(angle: angle, easing: easing)
  }
  
  public func add(time: Int, angle: CGFloat) {
    add(time, angle: angle, easing: nil)
  }
  
  
}