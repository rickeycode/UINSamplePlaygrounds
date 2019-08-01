# Correspondence when the scroll of UIScrollView is not smooth.

[日本語](README.ja.md)
 
- It contains the playground for validation in Swift.
- Processing of high load is given to the system in UIScrollViewDelegate.
- The process is transferred from `mainthread` to another thread by` scrollLogSessionQueue.async`.


## Result

I have programmed the program to load every time when `scrollViewDidScroll` of UIScrollViewDelegate is fired (every time it is scrolled).
By transferring the process to another thread in the sample code line `scrollLogSessionQueue.async`, the display clutter is reduced. 


## Blog

[Blog link](https://rc-code.info/ios/post-273/)
