//
//  MGAnimationConstraintMaker.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit


public class MGAnimationConstraintMaker {
  
  private let view: UIView
  private let animator: IFTTTAnimator
  
  // Internal methods
  
  internal init(view: UIView, animator: IFTTTAnimator) {
    self.view = view
    self.animator = animator
  }
  //  IFTTTTextColorAnimation
  
  internal class func makeAnimation(view: UIView, animator: IFTTTAnimator, @noescape closure: (make: MGAnimationConstraintMaker) -> Void) {
    let maker = MGAnimationConstraintMaker(view: view, animator: animator)
    closure(make: maker)
    
    // create frame animation
    if maker.frameAnimation.keyFrames.count > 0 {
      let myAnimation:  IFTTTFrameAnimation = IFTTTFrameAnimation(view: view)
      
      for keyFrame in maker.frameAnimation.keyFrames {
        if keyFrame.1.easing != nil {
          myAnimation.addKeyframeForTime(keyFrame.0, frame: keyFrame.1.frame, withEasingFunction: keyFrame.1.easing)
        }
        else {
          myAnimation.addKeyframeForTime(keyFrame.0, frame: keyFrame.1.frame)
        }
      }
      animator.addAnimation(myAnimation)
    }
    
    // create alpha animation
    if maker.alphaAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTAlphaAnimation = IFTTTAlphaAnimation(view: view)
      for keyFrame in maker.alphaAnimation.keyFrames {
        if keyFrame.1.easing != nil {
          myAnimation.addKeyframeForTime(keyFrame.0, alpha: keyFrame.1.alpha, withEasingFunction: keyFrame.1.easing)
        }
        else {
          myAnimation.addKeyframeForTime(keyFrame.0, alpha: keyFrame.1.alpha)
        }
      }
      animator.addAnimation(myAnimation)
    }
    
    // create hide animation
    if maker.hideAnimation.keyFramesHideAt.count > 0 {
      for keyFrame in maker.hideAnimation.keyFramesHideAt {
        let myAnimation: IFTTTHideAnimation = IFTTTHideAnimation(view: view, hideAt: keyFrame)
        animator.addAnimation(myAnimation)
      }
    }
    // create show animation
    if maker.hideAnimation.keyFramesShowAt.count > 0 {
      for keyFrame in maker.hideAnimation.keyFramesShowAt {
        let myAnimation: IFTTTHideAnimation = IFTTTHideAnimation(view: view, showAt: keyFrame)
        animator.addAnimation(myAnimation)
      }
    }
    
    // create rotation animation
    if maker.rotationAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTRotationAnimation = IFTTTRotationAnimation(view: view)
      for keyFrame in maker.rotationAnimation.keyFrames {
        if keyFrame.1.easing != nil {
          myAnimation.addKeyframeForTime(keyFrame.0, rotation: keyFrame.1.angle, withEasingFunction: keyFrame.1.easing)
        }
        else {
          myAnimation.addKeyframeForTime(keyFrame.0, rotation: keyFrame.1.angle)
        }
      }
      animator.addAnimation(myAnimation)
    }
    
    // create color animation
    if maker.colorAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTColorAnimation = IFTTTColorAnimation(view: view)
      for keyFrame in maker.colorAnimation.keyFrames {
        if keyFrame.1.easing != nil {
          myAnimation.addKeyframeForTime(keyFrame.0, color: keyFrame.1.color, withEasingFunction: keyFrame.1.easing)
        }
        else {
          myAnimation.addKeyframeForTime(keyFrame.0, color: keyFrame.1.color)
        }
      }
      animator.addAnimation(myAnimation)
    }
    
    // create scale animation
    if maker.scaleAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTScaleAnimation = IFTTTScaleAnimation(view: view)
      for keyFrame in maker.scaleAnimation.keyFrames {
        if keyFrame.1.easing != nil {
          myAnimation.addKeyframeForTime(keyFrame.0, scale: keyFrame.1.scale, withEasingFunction: keyFrame.1.easing)
        }
        else {
          myAnimation.addKeyframeForTime(keyFrame.0, scale: keyFrame.1.scale)
        }
      }
      animator.addAnimation(myAnimation)
    }
    
    // create cornerRadius animation
    if maker.cornerRadiusAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTCornerRadiusAnimation = IFTTTCornerRadiusAnimation(view: view)
      
      for keyFrame in maker.cornerRadiusAnimation.keyFrames {
        if keyFrame.1.easing != nil {
          myAnimation.addKeyframeForTime(keyFrame.0, cornerRadius: keyFrame.1.cornerRadius, withEasingFunction: keyFrame.1.easing)
        }
        else {
          myAnimation.addKeyframeForTime(keyFrame.0, cornerRadius: keyFrame.1.cornerRadius)
        }
      }
      animator.addAnimation(myAnimation)
    }
    
    // create transform3D animation
    if maker.transform3DAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTTransform3DAnimation = IFTTTTransform3DAnimation(view: view)
      
      for keyFrame in maker.transform3DAnimation.keyFrames {
        if keyFrame.1.easing != nil {
          myAnimation.addKeyframeForTime(keyFrame.0, transform: keyFrame.1.transform3D, withEasingFunction: keyFrame.1.easing)
        }
        else {
          myAnimation.addKeyframeForTime(keyFrame.0, transform: keyFrame.1.transform3D)
        }
      }
      animator.addAnimation(myAnimation)
    }
    
    // create textColor animation
    if maker.textColorAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTTextColorAnimation = IFTTTTextColorAnimation(label: view as! UILabel)
      
      for keyFrame in maker.textColorAnimation.keyFrames {
        if keyFrame.1.easing != nil {
          myAnimation.addKeyframeForTime(keyFrame.0, color: keyFrame.1.color, withEasingFunction: keyFrame.1.easing)
        }
        else {
          myAnimation.addKeyframeForTime(keyFrame.0, color: keyFrame.1.color)
        }
      }
      animator.addAnimation(myAnimation)
    }
    
  }
  
  
  
  // Public methods
  
  private(set) lazy var frameAnimation: MGAnimationFrameAnimation = MGAnimationFrameAnimation()
  
  private(set) lazy var alphaAnimation: MGAnimationAlphaAnimation = MGAnimationAlphaAnimation()
  
  private(set) lazy var hideAnimation: MGAnimationHideAnimation = MGAnimationHideAnimation()
  
  private(set) lazy var rotationAnimation: MGAnimationRotationAnimation = MGAnimationRotationAnimation()
  
  private(set) lazy var colorAnimation: MGAnimationColorAnimation = MGAnimationColorAnimation()
  
  private(set) lazy var scaleAnimation: MGAnimationScaleAnimation = MGAnimationScaleAnimation()
  
  private(set) lazy var cornerRadiusAnimation: MGAnimationCornerRadiusAnimation = MGAnimationCornerRadiusAnimation()

  private(set) lazy var transform3DAnimation: MGAnimationTransform3DAnimation = MGAnimationTransform3DAnimation()
  
  private(set) lazy var textColorAnimation: MGAnimationTextColorAnimation = MGAnimationTextColorAnimation()
  
}