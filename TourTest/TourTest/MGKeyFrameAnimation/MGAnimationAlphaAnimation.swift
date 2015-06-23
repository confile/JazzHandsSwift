//
//  MGAnimationAlphaAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationAlphaAnimation {
  
  public struct InternalObject {
    var alpha: CGFloat
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [Int : InternalObject] = [Int : InternalObject]()
  
  public func add(time: Int, alpha: CGFloat) {
    add(time, alpha: alpha, easing: nil)
  }
  
  public func add(time: Int, alpha: CGFloat, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(alpha: alpha, easing: easing)
  }
  
}