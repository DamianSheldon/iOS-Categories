JKCategories(iOS-Categories)
================
[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/shaojiankui/JKCategories/master/LICENSE)&nbsp;
[![CocoaPods](http://img.shields.io/cocoapods/v/JKCategories.svg?style=flat)](http://cocoapods.org/?q=JKCategories)&nbsp;
[![CocoaPods](http://img.shields.io/cocoapods/p/JKCategories.svg?style=flat)](http://cocoapods.org/?q=JKCategories)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS%206%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)&nbsp;
[![Build Status](https://travis-ci.org/shaojiankui/JKCategories.svg?branch=master)](https://travis-ci.org/shaojiankui/JKCategories)


JKCategories(iOS-Categories), a collection of useful Objective-C Categories extending iOS Frameworks such as Foundation,UIKit,CoreData,QuartzCore,CoreLocation,MapKit Etc.

There are so many categories in repository, we rarely need it all, so I dicide to divide it to subspecs.

## Requirements
This library requires `iOS 8.0+` and `Xcode 7.0+`.

## TODO

* Merge redundant categories
* Improve demo
* Add  test

## Installation

### Installation with CocoaPods
Subspec follow the format `JKCategories/Framework/Class/Category`, We can import subspec `pod 'JKCategories/Framework/Class/Category', :git => 'https://github.com/DamianSheldon/iOS-Categories', :tag => JKCategoriesVersion`, for example:

```
# Podfile

    JKCategoriesVersion = '1.9.1v'

    pod 'JKCategories/Foundation/NSString/Hash', :git => 'https://github.com/DamianSheldon/iOS-Categories', :tag => JKCategoriesVersion

    pod 'JKCategories/Foundation/NSString/NormalRegex', :git => 'https://github.com/DamianSheldon/iOS-Categories', :tag => JKCategoriesVersion

    pod 'JKCategories/Foundation/NSData/Hash', :git => 'https://github.com/DamianSheldon/iOS-Categories', :tag => JKCategoriesVersion

```


## Usage
Import the header file into any class where you wish to make use of the functionality such as **#import <NSArray+JKSafeAccess.h>** .

More details can refer demos.

## Subspecs of categories

### AVFoundation  
  * Additions  

### CoreData  
  * NSFetchRequest  
    * Extensions  
  * NSManagedObject  
    * Dictionary  
    * Extensions  
  * NSManagedObjectContext  
    * Extensions  
    * Fetching  
    * FetchRequestsConstructors  
    * ObjectClear  

### CoreLocation  
  * CLLocation  
    * CH1903  

### Foundation  
  * NSArray  
    * Block  
    * SafeAccess  
  * NSBundle  
    * AppIcon  
  * NSData  
    * APNSToken  
    * Base64  
    * DataCache  
    * Encrypt  
    * Gzip  
    * Hash  
    * PCM  
    * zlib  
  * NSDate  
    * CupertinoYankee  
    * Extension  
    * Formatter  
    * InternetDateTime  
    * Reporting  
    * Utilities  
    * ZeroDate  
  * NSDateFormatter  
    * Make  
  * NSDictionary  
    * Block  
    * JSONString  
    * Merge  
    * SafeAccess  
    * URL  
    * XML  
  * NSException  
    * Trace  
  * NSFileHandle  
    * ReadLine  
  * NSFileManager  
    * Paths  
  * NSHTTPCookieStorage  
    * FreezeDry  
  * NSIndexPath  
    * Offset  
  * NSInvocation  
    * Bb  
    * Block  
  * NSNotificationCenter  
    * MainThread  
  * NSNumber  
    * CalculatingByString  
    * Extensions  
    * CGFloat  
    * RomanNumerals  
    * Round  
  * NSObject  
    * AddProperty  
    * AppInfo  
    * AssociatedObject  
    * AutoCoding  
    * Blocks  
    * BlockTimer  
    * EasyCopy  
    * GCD  
    * KVOBlocks  
    * Reflection  
    * Runtime  
  * NSRunLoop  
    * PerformBlock  
  * NSSet  
    * Block  
  * NSString  
    * Base64  
    * Contains  
    * DictionaryValue  
    * Emoji  
    * Encrypt  
    * Hash  
    * HTML  
    * Matcher  
    * MIME  
    * NormalRegex  
    * Pinyin  
    * RemoveEmoji  
    * Score  
    * Size  
    * StringPages  
    * Trims  
    * URLEncode  
    * UUID  
    * XMLDictionary  
  * NSTimer  
    * Addition  
    * Blocks  
  * NSURL  
    * Param  
    * QueryDictionary  
  * NSURLConnection  
    * SelfSigned  
  * NSURLRequest  
    * Upload  
    * ParamsFromDictionary  
  * NSURLSession  
    * SynchronousTask  
  * NSUserDefaults  
    * iCloudSync  
    * SafeAccess  

### MapKit  
  * MKMapView  
    * BetterMaps  
    * MoveLogo  
    * ZoomLevel  

### QuartzCore  
  * CAAnimation  
    * EasingEquations  
  * CALayer  
    * BorderColor  
  * CAMediaTimingFunction  
    * AdditionalEquations  
  * CAShapeLayer  
    * UIBezierPath  
  * CATransaction  
    * AnimateWithDuration  

### UIKit  
  * UIAlertView  
    * Block  
  * UIApplication  
    * ApplicationSize  
    * KeyboardFrame  
    * NetworkActivityIndicator  
    * Permissions  
  * UIBarButtonItem  
    * Action  
    * Badge  
  * UIBezierPath  
    * BasicShapes  
    * Length  
    * SVGString  
    * Symbol  
    * ThroughPointsBezier  
  * UIButton  
    * BackgroundColor  
    * Badge  
    * Block  
    * CountDown  
    * ImagePosition  
    * Indicator  
    * MiddleAligning  
    * Submitting  
    * TouchAreaInsets  
  * UIColor  
    * Gradient  
    * HEX  
    * Modify  
    * Random  
    * Web  
  * UIControl  
    * ActionBlocks  
    * Block  
    * Sound  
  * UIDevice  
    * Hardware  
    * PasscodeStatus  
  * UIFont  
    * CustomLoader  
    * DynamicFontControl  
    * TTF  
  * UIImage  
    * Alpha  
    * BetterFace  
    * Blur  
    * Capture  
    * Color  
    * Crop  
    * FileName  
    * GIF  
    * Mask  
    * Merge  
    * Reflect  
    * RemoteSize  
    * Resize  
    * Rotate  
    * RoundedCorner  
    * SampleBuffer  
    * Shadow  
    * SuperCompress  
    * Thumbnail  
    * Vector  
  * UIImageView  
    * Addition  
    * BetterFace  
    * FaceAwareFill  
    * GeometryConversion  
    * Letters  
    * Reflect  
  * UILable  
    * AdjustableLabel  
    * AutomaticWriting  
    * AutoSize  
    * SuggestSize  
  * UINavigationBar  
    * Awesome  
  * UINavigationController  
    * KeyboardFix  
    * StackManager  
    * Transitions  
  * UINavigationItem  
    * Loading  
    * Lock  
    * Margin  
  * UIPopoverController  
    * hone  
  * UIResponder  
    * Chain  
    * FirstResponder  
  * UIScreen  
    * Frame  
  * UIScrollView  
    * Addition  
    * Pages  
  * UISearchBar  
    * Blocks  
  * UISplitViewController  
    * QuickAccess  
  * UITableView  
    * iOS7Style  
  * UITableViewCell  
    * DelaysContentTouches  
    * NIB  
  * UITextField  
    * Blocks  
    * History  
    * InputLimit  
    * Select  
    * Shake  
  * UITextView  
    * InputLimit  
    * PinchZoom  
    * PlaceHolder  
    * Select  
  * UIView  
    * Animation  
    * BlockGesture  
    * Border  
    * Constraints  
    * CustomBorder  
    * Draggable  
    * Find  
    * Frame  
    * Nib  
    * Recursion  
    * RedDot  
    * Screenshot  
    * Shake  
    * Toast  
    * Visuals  
  * UIViewController  
    * BackButtonItemTitle  
    * BackButtonTouched  
    * BlockSegue  
    * RecursiveDescription  
    * StoreKit  
    * Visible  
  * UIWebView  
    * Blocks  
    * Canvas  
    * JavaScript  
    * Load  
    * LoadInfo  
    * MetaParser  
    * Style  
    * SwipeGesture  
    * WebStorage  
  * UIWindow  
    * Hierarchy    

## License

JKCategories is available under the MIT license.

