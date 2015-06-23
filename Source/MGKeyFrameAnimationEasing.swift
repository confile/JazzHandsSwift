//
//  MGKeyFrameAnimationEasing.swift
//  TourTest
//
//  Created by Michael Gorski on 04.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGKeyFrameAnimationEasing {
  
  private let animation: MGKeyFrameAnimationBaseAnimation
  
  init(animation: MGKeyFrameAnimationBaseAnimation) {
    self.animation = animation
  }
  
  
  public func easeInOut() {
   println("easeInOut")
  }
  
  
}