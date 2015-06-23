//
//  UIColorExt.swift
//  TourTest
//
//  Created by Michael Gorski on 02.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit

/**
*  Source: http://stackoverflow.com/questions/24263007/how-to-use-hex-colour-values-in-swift-ios
*/
extension UIColor {
  convenience init(red: Int, green: Int, blue: Int) {
    assert(red >= 0 && red <= 255, "Invalid red component")
    assert(green >= 0 && green <= 255, "Invalid green component")
    assert(blue >= 0 && blue <= 255, "Invalid blue component")
    
    self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
  }
  
  /**
  Create a UIColor from a hex value, e.g., 0xFFFFFF
  
  :param: netHex <#netHex description#>
  
  :returns: <#return value description#>
  */
  convenience init(netHex:Int) {
    self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
  }
}



class MGColor {
  
  static let baseColor: UIColor = UIColor(netHex: 0x1f202a)
  static let actionColor: UIColor = UIColor(netHex: 0xb5882e)
  static let actionSecondColor: UIColor = UIColor(netHex: 0x11c194)
  static let headerBackgroundColor:UIColor = UIColor(netHex: 0x141414)
  static let mainBackgroundColor: UIColor = UIColor(netHex: 0xf0f0f0)
  
}

