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
 
  public struct InternalObject {
    var hidden: Bool
    var easing: IFTTTEasingFunction?
  }
  
  private(set) var keyFrames: [Int : InternalObject] = [Int : InternalObject]()
  
  
  public func add(time: Int, hidden: Bool, easing: IFTTTEasingFunction?) {
    self.keyFrames[time] = InternalObject(hidden: hidden, easing: easing)
  }
  
  public func add(time: Int, hidden: Bool) {
    add(time, hidden: hidden, easing: nil)
  }
  
  public func hideAt(time: Int) {
    add(time, hidden: false)
    add(time + 1, hidden: true)
  }
  
  public func showAt(time: Int) {
    add(time, hidden: true)
    add(time + 1, hidden: false)
  }

}