//
//  MGAnimationTransform3DAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationTransform3DAnimation {
  
  public struct InternalObject {
    var transform3D: IFTTTTransform3D
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [CGFloat : InternalObject] = [CGFloat : InternalObject]()
  
  
  public func add(time: CGFloat, transform3D: IFTTTTransform3D, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(transform3D: transform3D, easing: easing)
  }
  
  public func add(time: CGFloat, transform3D: IFTTTTransform3D) {
    add(time, transform3D: transform3D, easing: nil)
  }
  
  
}