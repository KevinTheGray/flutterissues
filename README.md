I was asked to create proects to reproduce these issues:
https://github.com/flutter/flutter/issues/26654
https://github.com/flutter/flutter/issues/26660

These issues happen 100% of the time Oon a physical device.  


## To reproduce image issue

1. launch the app like you would any flutter app
2. background the app
3. come back to the app
4. images will be black or invisible... or maybe even something else, I've seen it look like it's reusing the "Debug" banner

## To reproduce crash issue
1. launch the app like you would any flutter app
2. Tap an image, a view controller will appear over it
3. tap anywhere on the view controller to dismiss it
4 crash