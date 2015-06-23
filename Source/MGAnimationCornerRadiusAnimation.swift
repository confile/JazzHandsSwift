//
//  MGAnimationCornerRadiusAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationCornerRadiusAnimation {
  
  public struct InternalObject {
    var cornerRadius: CGFloat
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [CGFloat : InternalObject] = [CGFloat : InternalObject]()
  
  
  public func add(time: CGFloat, cornerRadius: CGFloat, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(cornerRadius: cornerRadius, easing: easing)
  }
  
  public func add(time: CGFloat, cornerRadius: CGFloat) {
    add(time, cornerRadius: cornerRadius, easing: nil)
  }
  
}