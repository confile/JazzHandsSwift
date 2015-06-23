//
//  MGAnimationHideAnimation.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

public class MGAnimationHideAnimation {
 
  
  private(set) var keyFramesHideAt: [CGFloat] = [CGFloat]()
  private(set) var keyFramesShowAt: [CGFloat] = [CGFloat]()
  
  public func hideAt(time: CGFloat) {
    self.keyFramesHideAt.append(time)
  }
  
  public func showAt(time: CGFloat) {
    self.keyFramesShowAt.append(time)
  }

}