//
//  MGAnimationColorAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationColorAnimation {
  
  public struct InternalObject {
    var color: UIColor
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [CGFloat : InternalObject] = [CGFloat : InternalObject]()
  

  public func add(time: CGFloat, color: UIColor, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(color: color, easing: easing)
  }
  
  public func add(time: CGFloat, color: UIColor) {
    add(time, color: color, easing: nil)
  }
  
}