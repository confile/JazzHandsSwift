//
//  MGAnimationScaleAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationScaleAnimation {
  
  public struct InternalObject {
    var scale: CGFloat
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [CGFloat : InternalObject] = [CGFloat : InternalObject]()
  
  
  public func add(time: CGFloat, scale: CGFloat, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(scale: scale, easing: easing)
  }
  
  public func add(time: CGFloat, scale: CGFloat) {
    add(time, scale: scale, easing: nil)
  }
  
}