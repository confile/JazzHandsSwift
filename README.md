# JazzHandsSwift
A Swift Keyframe-based Animation DSL around the JazzHands Framework https://github.com/IFTTT/JazzHands 

Instalation 
== 
- Copy the ``Source`` directory to your project and link it by dragging into Xcode.
- Install the dependent pod. Include the following line in your pod file's target:
 ```
pod 'JazzHands', '~> 0.2.1'
```
In your project you have to create a Bridging-Header file and include: 
```
#import <IFTTTJazzHands.h>
```

Usage
==

This frameworks adds an extension to ``UIView`` called: ``mg_makeAnimation``.

Create an animator
```
let animator = IFTTTAnimator()
```
Create a ``UIView`` or an subclass like ``UIImageView`` you wanne animate
```
let myView = UIView()
```
Use the JazzHandsSwift DSL to define the animation: 

```
  
private func centerForPage(page: CGFloat) -> CGFloat {
  return self.view.frame.size.width * (page - 1)
}

self.myView.mg_makeAnimation(animator) { (make) -> Void in

  // make a frame animation
  make.frameAnimation.add(0, frame: self.myView.frame)
  make.frameAnimation.add(2, frame: CGRectOffset(CGRectInset(self.myView.frame, 42, 42), CGFloat(centerForPage(2)) + 2, 78))
  
  // hide animation at page 2
  make.hideAnimation.hideAt(1)
      
  // rotation animation the crown from page 1 to page 2
  make.arotationAnimation.add(0, angle: 0)
  make.arotationAnimation.add(1, angle: 90)
}
```

Easing
==

Easing is also supported just use the add function with an easing parameter at the end
````
make.frameAnimation.add(timeForPage(2), frame: self.myView.frame, easing: MGAnimationEasing.easeInCubic)
```
Possible easing types are:
- linear
- easeInQuad
- easeOutQuad
- easeInOutQuad
- easeInCubic
- easeOutCubic
- easeInOutCubic
- easeInQuart
- easeOutQuart
- easeInOutQuart
- easeInBounce
- easeOutBounce

Possible [Animation Types](https://github.com/IFTTT/JazzHands#animation-types).
