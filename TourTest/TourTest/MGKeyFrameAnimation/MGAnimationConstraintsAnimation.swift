//
//  MGAnimationConstraintsAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationConstraintsAnimation {
  
  public struct InternalObject {
    var constraint: CGFloat
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [Int : InternalObject] = [Int : InternalObject]()
  
  
  public func add(time: Int, constraint: CGFloat, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(constraint: constraint, easing: easing)
  }
  
  public func add(time: Int, constraint: CGFloat) {
    add(time, constraint: constraint, easing: nil)
  }
  
}