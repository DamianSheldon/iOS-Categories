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
This library requires `iOS 6.0+` and `Xcode 7.0+`.

## TODO

* Divide all subspecs
* Demo
* Test

## Installation

### Installation with CocoaPods
Subspec follow the format `JKCategories/Framework/Class/Category`, We can import subspec `pod 'JKCategories/Framework/Class/Category', :git => 'https://github.com/DamianSheldon/iOS-Categories', :tag => JKCategoriesVersion`, for example:

```
# Podfile

    JKCategoriesVersion = '1.8.1P'

    pod 'JKCategories/Foundation/NSString/Hash', :git => 'https://github.com/DamianSheldon/iOS-Categories', :tag => JKCategoriesVersion

    pod 'JKCategories/Foundation/NSString/NormalRegex', :git => 'https://github.com/DamianSheldon/iOS-Categories', :tag => JKCategoriesVersion

    pod 'JKCategories/Foundation/NSData/Hash', :git => 'https://github.com/DamianSheldon/iOS-Categories', :tag => JKCategoriesVersion

```


## Usage
Import the header file into any class where you wish to make use of the functionality such as **#import <NSArray+JKSafeAccess.h>** .

More details can refer demos.

"JKCategories.h",

## Subspecs of categories

### Foundation
* NSArray
* NSBundle
* NSData
    * Hash
    * NSFileManager

* NSDate
* NSDateFormatter
* NSNotificationCenter
* NSDictionary
* NSException
* NSFileManager
* NSIndexPath
* NSNumber
* NSObject
* NSSet
* NSString
    * Hash
    * NormalRegex

* NSTimer
* NSURL
* NSUserDefaults
* NSHTTPCookieStorage
* NSFileHandle
* NSRunLoop
* NSURLRequest
* NSOperation
* NSInvocation
* NSURLConnection
* NSURLSession

### UIKit
* UIAlertView
* UIApplication
* UIBarButtonItem
* UIBezierPath
* UIButton
    * CountDown
    * ImagePosition
    * TouchAreaInsets
    * RedDot

* UIColor
* UIFont
* UIControl
* UIDevice
* UIImage
* UIImageView
* UILable
* UINavigationBar
* UINavigationController
* UINavigationItem
* UIResponder
* UIScreen
* UIScrollView
* UISearchBar
* UISplitViewController
* UITableView
* UITableViewCell
* UITextField
* UITextView
* UIView
    * Border
    * Visuals
    * CustomBorder

* UIViewController
* UIWebView
* UIWindow
* UIPopoverController
* UICollectionView

### QuartzCore
* CALayer
* CAMediaTimingFunction
* CAAnimation
* CAShapeLayer
* CATransaction

### CoreData
* NSManagedObjectContext
* NSFetchRequest
* NSManagedObject
* NSPersistentStoreCoordinator

### CoreLocation
* CLLocationManager
* CLLocation

### MapKit
* MKMapView

## License

JKCategories is available under the MIT license.

