//
//  MGAnimationFrameAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationFrameAnimation {
  
  public struct InternalObject {
    var frame: CGRect
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [CGFloat : InternalObject] = [CGFloat : InternalObject]()
  
  public func add(time: CGFloat, frame: CGRect, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(frame: frame, easing: easing)
  }
  
  public func add(time: CGFloat, frame: CGRect) {
    add(time, frame: frame, easing: nil)
  }
  
}




