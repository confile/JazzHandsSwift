//
//  TourViewController.swift
//  TourTest
//
//  Created by Michael Gorski on 01.06.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import UIKit

class TourViewController: IFTTTAnimatedPagingScrollViewController {
  
  private let NUMBER_OF_PAGES: CGFloat = 5
  
  private var pageControl: UIPageControl?
  private var page1Container: UIView?
  private var crown: UIImageView?
  private var phoneScreen: UIImageView?
  private var card1: UIImageView?
  private var card2: UIImageView?
  private var likeDescription: UIView?
  
  
  init() {
    super.init(nibName: nil, bundle: nil)
    self.numberOfPages = 5
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = MGColor.headerBackgroundColor
    
//    self.scrollView.bounces = false
//    self.scrollView.contentSize = CGSizeMake(NUMBER_OF_PAGES * CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))
//    self.scrollView.pagingEnabled = true
//    self.scrollView.showsHorizontalScrollIndicator = false
//    self.delegate = self
    
    setupPageControl()
    
    placeViews()
    configureAnimation()
  }
  
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
  
  // MARK: Private methods
  
  private func setupPageControl() {
    self.pageControl = UIPageControl()
    self.pageControl?.currentPageIndicatorTintColor = UIColor.whiteColor()
    self.pageControl?.pageIndicatorTintColor = UIColor.grayColor()
    self.pageControl?.numberOfPages = Int(NUMBER_OF_PAGES)
    self.pageControl?.sizeToFit()
    self.pageControl!.frame = CGRectMake(self.view.frame.width/2 - self.pageControl!.frame.width/2, self.view.frame.height - 40, self.pageControl!.frame.size.width, self.pageControl!.frame.size.height)
    self.view.addSubview(self.pageControl!)
  }
  
  private func centerForPage(page: CGFloat) -> CGFloat {
    return self.view.frame.size.width * page
  }
  
  
  private func placeViews() {
    
    // ---- page1
    self.page1Container = UIView(frame: self.view.bounds)
   // self.page1Container?.backgroundColor = UIColor.redColor()
    self.scrollView.addSubview(self.page1Container!)

    
    let card = UIImageView(image: UIImage(named: "card")!)
    card.transform = CGAffineTransformMakeScale(0.4, 0.4)
    card.center = self.page1Container!.center
    self.page1Container?.addSubview(card)
    
    let page1Label = UILabel()
    page1Label.text = "Test is great..."
    page1Label.textColor = UIColor.whiteColor()
    page1Label.sizeToFit()
    page1Label.frame = CGRectMake(90, self.view.frame.size.height - 160, page1Label.frame.size.width, page1Label.frame.size.height)
    self.page1Container?.addSubview(page1Label)
    
    
    // ---- page 2
    
    
    self.phoneScreen = UIImageView(image: UIImage(named: "screenBlank")!)
    self.phoneScreen?.frame = CGRectMake(0, 0, self.phoneScreen!.frame.width/2, self.phoneScreen!.frame.height/2)
    self.phoneScreen?.center = self.view.center
    self.phoneScreen?.frame = CGRectOffset(self.phoneScreen!.frame, self.view.frame.width, 0)
    self.scrollView.addSubview(self.phoneScreen!)
    
    self.card2 = UIImageView(image: UIImage(named: "card2")!)
    self.card2?.frame = CGRectMake(0, 0, self.card2!.frame.width/2, self.card2!.frame.height/2)
    self.card2?.center = self.view.center
    self.card2?.frame = CGRectOffset(self.card2!.frame, self.view.frame.width, 0)
    self.scrollView.addSubview(self.card2!)
    
    self.card1 = UIImageView(image: UIImage(named: "card")!)
    self.card1?.frame = CGRectMake(0, 0, self.card1!.frame.width/2, self.card1!.frame.height/2)
    self.card1?.center = self.view.center
    self.card1?.frame = CGRectOffset(self.card1!.frame, self.view.frame.width, 0)
    self.scrollView.addSubview(self.card1!)
    
    
    self.likeDescription = UIView(frame: CGRectMake(0, 0, 100, 30))
    self.likeDescription?.backgroundColor = UIColor.greenColor()
    self.likeDescription?.center = self.card1!.center
    self.likeDescription?.alpha = 0
    self.scrollView.addSubview(self.likeDescription!)
    
    self.crown = UIImageView(image: UIImage(named: "logoCrown")!)
    self.crown?.contentMode = UIViewContentMode.ScaleAspectFit
    self.crown?.frame = CGRectMake(self.view.bounds.width/2 - 50, 50, 100, 100)
    self.scrollView.addSubview(self.crown!)
    
    let page2Description = UILabel()
    page2Description.text = "How it works..."
    page2Description.textColor = UIColor.whiteColor()
    page2Description.sizeToFit()
    page2Description.frame = CGRectMake(120, self.view.frame.height - 100, page2Description.frame.width, page2Description.frame.height)
    page2Description.frame = CGRectOffset(page2Description.frame, self.view.frame.width, 0)
    self.scrollView.addSubview(page2Description)


    
    
  }
  
  private func configureAnimation() {
    
    
    // ---------------------------
    // animate crown
    
    self.crown?.mg_makeAnimation(animator) { (make) -> Void in
      make.frameAnimation.add(0, frame: self.crown!.frame)
      make.frameAnimation.add(1, frame: CGRectOffset(CGRectInset(self.crown!.frame, 42, 42), CGFloat(centerForPage(1)) + 2, 78))
  
      // hide after page 2
      make.hideAnimation.hideAt(2)
      
      // rotate the crown from page 1 to page 2
      make.rotationAnimation.add(0, angle: 0)
      make.rotationAnimation.add(1, angle: -180)
    }
   
    // ---------------------------
    // animate likeDescription

    self.likeDescription?.mg_makeAnimation(animator ) { (make) -> Void in
      make.alphaAnimation.add(1, alpha: 0)
      make.alphaAnimation.add(2, alpha: 1)
      
      make.frameAnimation.add(1, frame: self.likeDescription!.frame)
      make.frameAnimation.add(2, frame: CGRectOffset(self.likeDescription!.frame, self.view.frame.width*2, 0))
      
      // likeDescription rotation
      make.rotationAnimation.add(1, angle: 0)
      make.rotationAnimation.add(2, angle: -90)
      
      // hide likeDescription on page 3
      make.hideAnimation.hideAt(2)
    }
    
    // ---------------------------
    // animate the phoneScreen
    
    self.phoneScreen?.mg_makeAnimation(animator) { (make) -> Void in
      make.frameAnimation.add(1, frame: self.phoneScreen!.frame, easing: MGAnimationEasing.easeInCubic)
      make.frameAnimation.add(1.5, frame: CGRectOffset(self.phoneScreen!.frame, self.view.frame.size.width, 0))
    }

    
   // ---------------------------
   // animate card1

    self.card1?.mg_makeAnimation(animator) { (make) -> Void in
      make.frameAnimation.add(1, frame: self.card1!.frame)
      make.frameAnimation.add(2, frame: CGRectOffset(self.card1!.frame, self.view.frame.width*2, 0))
      
      // card like rotation
      make.rotationAnimation.add(1, angle: 0)
      make.rotationAnimation.add(2, angle: -90)
      
      // hide card1 on page 3
      make.hideAnimation.hideAt(2)
    }

 
    
  }
  

  /**
  Get the current page of the UIScrollView.
  */
  private func getPageNumber() -> Int {
    // http://stackoverflow.com/questions/4132993/getting-the-current-page
    var width : CGFloat = self.scrollView.frame.size.width
    var page : Int = Int((self.scrollView.contentOffset.x + (CGFloat(0.5) * width)) / width)
    return page
  }
  
  
  override func scrollViewDidScroll(scrollView: UIScrollView) {
    super.scrollViewDidScroll(scrollView)
    self.pageControl?.currentPage = getPageNumber()
  }
  

  
  
}
