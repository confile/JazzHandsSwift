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
  
  
  internal class func makeAnimation(view: UIView, animator: IFTTTAnimator, @noescape closure: (make: MGAnimationConstraintMaker) -> Void) {
    let maker = MGAnimationConstraintMaker(view: view, animator: animator)
    closure(make: maker)
    
    // create frame animation
    if maker.frameAnimation.keyFrames.count > 0 {
      let myAnimation:  IFTTTFrameAnimation = IFTTTFrameAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.frameAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andFrame: keyFrame.1.frame)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    // create alpha animation
    if maker.alphaAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTAlphaAnimation = IFTTTAlphaAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.alphaAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andAlpha: keyFrame.1.alpha)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    // create hide animation
    if maker.hideAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTHideAnimation = IFTTTHideAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.hideAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andHidden: keyFrame.1.hidden)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    // create angle animation
    if maker.angleAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTAngleAnimation = IFTTTAngleAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.angleAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andAngle: keyFrame.1.angle)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    // create color animation
    if maker.colorAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTColorAnimation = IFTTTColorAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.colorAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andColor: keyFrame.1.color)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    // create scale animation
    if maker.scaleAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTScaleAnimation = IFTTTScaleAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.scaleAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andScale: keyFrame.1.scale)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    // create cornerRadius animation
    if maker.cornerRadiusAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTCornerRadiusAnimation = IFTTTCornerRadiusAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.cornerRadiusAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andCornerRadius: keyFrame.1.cornerRadius)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    // create constraints animation
    if maker.constrantsAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTConstraintsAnimation = IFTTTConstraintsAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.constrantsAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andConstraint: keyFrame.1.constraint)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    // create transform3D animation
    if maker.transform3DAnimation.keyFrames.count > 0 {
      let myAnimation: IFTTTTransform3DAnimation = IFTTTTransform3DAnimation(view: view)
      animator.addAnimation(myAnimation)
      for keyFrame in maker.transform3DAnimation.keyFrames {
        let kf = IFTTTAnimationKeyFrame(time: keyFrame.0, andTransform3D: keyFrame.1.transform3D)
        if keyFrame.1.easing != nil {
          kf.easingFunction = keyFrame.1.easing!
        }
        myAnimation.addKeyFrame(kf)
      }
    }
    
    
  }
  
  
  
  // Public methods
  
  private(set) lazy var frameAnimation: MGAnimationFrameAnimation = MGAnimationFrameAnimation()
  
  private(set) lazy var alphaAnimation: MGAnimationAlphaAnimation = MGAnimationAlphaAnimation()
  
  private(set) lazy var hideAnimation: MGAnimationHideAnimation = MGAnimationHideAnimation()
  
  private(set) lazy var angleAnimation: MGAnimationAngleAnimation = MGAnimationAngleAnimation()
  
  private(set) lazy var colorAnimation: MGAnimationColorAnimation = MGAnimationColorAnimation()
  
  private(set) lazy var scaleAnimation: MGAnimationScaleAnimation = MGAnimationScaleAnimation()
  
  private(set) lazy var cornerRadiusAnimation: MGAnimationCornerRadiusAnimation = MGAnimationCornerRadiusAnimation()
  
  private(set) lazy var constrantsAnimation: MGAnimationConstraintsAnimation = MGAnimationConstraintsAnimation()
  
  private(set) lazy var transform3DAnimation: MGAnimationTransform3DAnimation = MGAnimationTransform3DAnimation()
  
  
}