version = 1.8.3P;

Pod::Spec.new do |s|
  s.name         = "JKCategories"
  s.version      = version
  s.summary      = "JKCategories(iOS-Categories), a collection of useful Objective-C Categories extending iOS Frameworks"
  s.description      = <<-DESC
                       JKCategories(iOS-Categories), a collection of useful Objective-C Categories extending iOS Frameworks such as Foundation,UIKit,CoreData,QuartzCore,CoreLocation,MapKit Etc.
                       DESC
  s.homepage     = "https://github.com/shaojiankui/JKCategories"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "skyfox" => "i@skyfox.org" }
  s.platform     = :ios, "6.0"
  s.ios.deployment_target = "6.0"
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreData', 'QuartzCore', 'CoreLocation', 'MapKit'
  s.libraries    = "z"
  s.source       = { :git => "https://github.com/DamianSheldon/iOS-Categories.git", :tag => "#{version}" }
  s.source_files = "JKCategories", "JKCategories/*.h","JKCategories/**/*.{h,m}"

  s.subspec 'AVFoundation' do |avfoundation|
    avfoundation.subspec 'Additions' do |additions|
      additions.source_files = 'JKCategories/AVFoundation/AVAssetImageGenerator+JKAdditions.{h,m}'
    end
  end

  s.subspec 'CoreData' do |coredata|
    coredata.subspec 'NSFetchRequest' do |nsfetchrequest|
      nsfetchrequest.subspec 'Extensions' do |extensions|
        extensions.source_files = 'JKCategories/CoreData/NSFetchRequest/NSFetchRequest+JKExtensions.{h,m}'
      end
    end
    coredata.subspec 'NSManagedObject' do |nsmanagedobject|
      nsmanagedobject.subspec 'Dictionary' do |dictionary|
        dictionary.source_files = 'JKCategories/CoreData/NSManagedObject/NSManagedObject+JKDictionary.{h,m}'
      end
      nsmanagedobject.subspec 'Extensions' do |extensions|
        extensions.source_files = 'JKCategories/CoreData/NSManagedObject/NSManagedObject+JKExtensions.{h,m}'
      end
    end
    coredata.subspec 'NSManagedObjectContext' do |nsmanagedobjectcontext|
      nsmanagedobjectcontext.subspec 'Extensions' do |extensions|
        extensions.source_files = 'JKCategories/CoreData/NSManagedObjectContext/NSManagedObjectContext+JKExtensions.{h,m}'
      end
      nsmanagedobjectcontext.subspec 'Fetching' do |fetching|
        fetching.source_files = 'JKCategories/CoreData/NSManagedObjectContext/NSManagedObjectContext+JKFetching.{h,m}'
      end
      nsmanagedobjectcontext.subspec 'FetchRequestsConstructors' do |fetchrequestsconstructors|
        fetchrequestsconstructors.source_files = 'JKCategories/CoreData/NSManagedObjectContext/NSManagedObjectContext+JKFetchRequestsConstructors.{h,m}'
      end
      nsmanagedobjectcontext.subspec 'ObjectClear' do |objectclear|
        objectclear.source_files = 'JKCategories/CoreData/NSManagedObjectContext/NSManagedObjectContext+JKObjectClear.{h,m}'
      end
    end
  end

  s.subspec 'CoreLocation' do |corelocation|
    corelocation.subspec 'CLLocation' do |cllocation|
      cllocation.subspec 'CH1903' do |ch1903|
        ch1903.source_files = 'JKCategories/CoreLocation/CLLocation/CLLocation+JKCH1903.{h,m}'
      end
    end
  end

  s.subspec 'Foundation' do |foundation|
    foundation.subspec 'NSArray' do |nsarray|
      nsarray.subspec 'Block' do |block|
        block.source_files = 'JKCategories/Foundation/NSArray/NSArray+JKBlock.{h,m}'
      end
      nsarray.subspec 'SafeAccess' do |safeaccess|
        safeaccess.source_files = 'JKCategories/Foundation/NSArray/NSArray+JKSafeAccess.{h,m}'
      end
    end
    foundation.subspec 'NSBundle' do |nsbundle|
      nsbundle.subspec 'AppIcon' do |appicon|
        appicon.source_files = 'JKCategories/Foundation/NSBundle/NSBundle+JKAppIcon.{h,m}'
      end
    end
    foundation.subspec 'NSData' do |nsdata|
      nsdata.subspec 'APNSToken' do |apnstoken|
        apnstoken.source_files = 'JKCategories/Foundation/NSData/NSData+JKAPNSToken.{h,m}'
      end
      nsdata.subspec 'Base64' do |base64|
        base64.source_files = 'JKCategories/Foundation/NSData/NSData+JKBase64.{h,m}'
      end
      nsdata.subspec 'DataCache' do |datacache|
        datacache.source_files = 'JKCategories/Foundation/NSData/NSData+JKDataCache.{h,m}'
      end
      nsdata.subspec 'Encrypt' do |encrypt|
        encrypt.source_files = 'JKCategories/Foundation/NSData/NSData+JKEncrypt.{h,m}'
      end
      nsdata.subspec 'Gzip' do |gzip|
        gzip.source_files = 'JKCategories/Foundation/NSData/NSData+JKGzip.{h,m}'
      end
      nsdata.subspec 'Hash' do |hash|
        hash.source_files = 'JKCategories/Foundation/NSData/NSData+JKHash.{h,m}'
      end
      nsdata.subspec 'PCM' do |pcm|
        pcm.source_files = 'JKCategories/Foundation/NSData/NSData+JKPCM.{h,m}'
      end
      nsdata.subspec 'zlib' do |zlib|
        zlib.source_files = 'JKCategories/Foundation/NSData/NSData+JKzlib.{h,m}'
      end
    end
    foundation.subspec 'NSDate' do |nsdate|
      nsdate.subspec 'CupertinoYankee' do |cupertinoyankee|
        cupertinoyankee.source_files = 'JKCategories/Foundation/NSDate/NSDate+JKCupertinoYankee.{h,m}'
      end
      nsdate.subspec 'Extension' do |extension|
        extension.source_files = 'JKCategories/Foundation/NSDate/NSDate+JKExtension.{h,m}'
      end
      nsdate.subspec 'Formatter' do |formatter|
        formatter.source_files = 'JKCategories/Foundation/NSDate/NSDate+JKFormatter.{h,m}'
      end
      nsdate.subspec 'InternetDateTime' do |internetdatetime|
        internetdatetime.source_files = 'JKCategories/Foundation/NSDate/NSDate+JKInternetDateTime.{h,m}'
      end
      nsdate.subspec 'Reporting' do |reporting|
        reporting.source_files = 'JKCategories/Foundation/NSDate/NSDate+JKReporting.{h,m}'
      end
      nsdate.subspec 'Utilities' do |utilities|
        utilities.source_files = 'JKCategories/Foundation/NSDate/NSDate+JKUtilities.{h,m}'
      end
      nsdate.subspec 'ZeroDate' do |zerodate|
        zerodate.source_files = 'JKCategories/Foundation/NSDate/NSDate+JKZeroDate.{h,m}'
      end
    end
    foundation.subspec 'NSDateFormatter' do |nsdateformatter|
      nsdateformatter.subspec 'Make' do |make|
        make.source_files = 'JKCategories/Foundation/NSDateFormatter/NSDateFormatter+JKMake.{h,m}'
      end
    end
    foundation.subspec 'NSDictionary' do |nsdictionary|
      nsdictionary.subspec 'Block' do |block|
        block.source_files = 'JKCategories/Foundation/NSDictionary/NSDictionary+JKBlock.{h,m}'
      end
      nsdictionary.subspec 'JSONString' do |jsonstring|
        jsonstring.source_files = 'JKCategories/Foundation/NSDictionary/NSDictionary+JKJSONString.{h,m}'
      end
      nsdictionary.subspec 'Merge' do |merge|
        merge.source_files = 'JKCategories/Foundation/NSDictionary/NSDictionary+JKMerge.{h,m}'
      end
      nsdictionary.subspec 'SafeAccess' do |safeaccess|
        safeaccess.source_files = 'JKCategories/Foundation/NSDictionary/NSDictionary+JKSafeAccess.{h,m}'
      end
      nsdictionary.subspec 'URL' do |url|
        url.source_files = 'JKCategories/Foundation/NSDictionary/NSDictionary+JKURL.{h,m}'
      end
      nsdictionary.subspec 'XML' do |xml|
        xml.source_files = 'JKCategories/Foundation/NSDictionary/NSDictionary+JKXML.{h,m}'
      end
    end
    foundation.subspec 'NSException' do |nsexception|
      nsexception.subspec 'Trace' do |trace|
        trace.source_files = 'JKCategories/Foundation/NSException/NSException+JKTrace.{h,m}'
      end
    end
    foundation.subspec 'NSFileHandle' do |nsfilehandle|
      nsfilehandle.subspec 'ReadLine' do |readline|
        readline.source_files = 'JKCategories/Foundation/NSFileHandle/NSFileHandle+JKReadLine.{h,m}'
      end
    end
    foundation.subspec 'NSFileManager' do |nsfilemanager|
      nsfilemanager.subspec 'Paths' do |paths|
        paths.source_files = 'JKCategories/Foundation/NSFileManager/NSFileManager+JKPaths.{h,m}'
      end
    end
    foundation.subspec 'NSHTTPCookieStorage' do |nshttpcookiestorage|
      nshttpcookiestorage.subspec 'FreezeDry' do |freezedry|
        freezedry.source_files = 'JKCategories/Foundation/NSHTTPCookieStorage/NSHTTPCookieStorage+JKFreezeDry.{h,m}'
      end
    end
    foundation.subspec 'NSIndexPath' do |nsindexpath|
      nsindexpath.subspec 'Offset' do |offset|
        offset.source_files = 'JKCategories/Foundation/NSIndexPath/NSIndexPath+JKOffset.{h,m}'
      end
    end
    foundation.subspec 'NSInvocation' do |nsinvocation|
      nsinvocation.subspec 'Bb' do |bb|
        bb.source_files = 'JKCategories/Foundation/NSInvocation/NSInvocation+JKBb.{h,m}'
      end
      nsinvocation.subspec 'Block' do |block|
        block.source_files = 'JKCategories/Foundation/NSInvocation/NSInvocation+JKBlock.{h,m}'
      end
    end
    foundation.subspec 'NSNotificationCenter' do |nsnotificationcenter|
      nsnotificationcenter.subspec 'MainThread' do |mainthread|
        mainthread.source_files = 'JKCategories/Foundation/NSNotificationCenter/NSNotificationCenter+JKMainThread.{h,m}'
      end
    end
    foundation.subspec 'NSNumber' do |nsnumber|
      nsnumber.subspec 'CalculatingByString' do |calculatingbystring|
        calculatingbystring.source_files = 'JKCategories/Foundation/NSNumber/NSDecimalNumber+JKCalculatingByString.{h,m}'
      end
      nsnumber.subspec 'Extensions' do |extensions|
        extensions.source_files = 'JKCategories/Foundation/NSNumber/NSDecimalNumber+JKExtensions.{h,m}'
      end
      nsnumber.subspec 'CGFloat' do |cgfloat|
        cgfloat.source_files = 'JKCategories/Foundation/NSNumber/NSNumber+JKCGFloat.{h,m}'
      end
      nsnumber.subspec 'RomanNumerals' do |romannumerals|
        romannumerals.source_files = 'JKCategories/Foundation/NSNumber/NSNumber+JKRomanNumerals.{h,m}'
      end
      nsnumber.subspec 'Round' do |round|
        round.source_files = 'JKCategories/Foundation/NSNumber/NSNumber+JKRound.{h,m}'
      end
    end
    foundation.subspec 'NSObject' do |nsobject|
      nsobject.subspec 'AddProperty' do |addproperty|
        addproperty.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKAddProperty.{h,m}'
      end
      nsobject.subspec 'AppInfo' do |appinfo|
        appinfo.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKAppInfo.{h,m}'
      end
      nsobject.subspec 'AssociatedObject' do |associatedobject|
        associatedobject.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKAssociatedObject.{h,m}'
      end
      nsobject.subspec 'AutoCoding' do |autocoding|
        autocoding.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKAutoCoding.{h,m}'
      end
      nsobject.subspec 'Blocks' do |blocks|
        blocks.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKBlocks.{h,m}'
      end
      nsobject.subspec 'BlockTimer' do |blocktimer|
        blocktimer.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKBlockTimer.{h,m}'
      end
      nsobject.subspec 'EasyCopy' do |easycopy|
        easycopy.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKEasyCopy.{h,m}'
      end
      nsobject.subspec 'GCD' do |gcd|
        gcd.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKGCD.{h,m}'
      end
      nsobject.subspec 'KVOBlocks' do |kvoblocks|
        kvoblocks.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKKVOBlocks.{h,m}'
      end
      nsobject.subspec 'Reflection' do |reflection|
        reflection.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKReflection.{h,m}'
      end
      nsobject.subspec 'Runtime' do |runtime|
        runtime.source_files = 'JKCategories/Foundation/NSObject/NSObject+JKRuntime.{h,m}'
      end
    end
    foundation.subspec 'NSRunLoop' do |nsrunloop|
      nsrunloop.subspec 'PerformBlock' do |performblock|
        performblock.source_files = 'JKCategories/Foundation/NSRunLoop/NSRunLoop+JKPerformBlock.{h,m}'
      end
    end
    foundation.subspec 'NSSet' do |nsset|
      nsset.subspec 'Block' do |block|
        block.source_files = 'JKCategories/Foundation/NSSet/NSSet+JKBlock.{h,m}'
      end
    end
    foundation.subspec 'NSString' do |nsstring|
      nsstring.subspec 'Base64' do |base64|
        base64.source_files = 'JKCategories/Foundation/NSString/NSString+JKBase64.{h,m}'
      end
      nsstring.subspec 'Contains' do |contains|
        contains.source_files = 'JKCategories/Foundation/NSString/NSString+JKContains.{h,m}'
      end
      nsstring.subspec 'DictionaryValue' do |dictionaryvalue|
        dictionaryvalue.source_files = 'JKCategories/Foundation/NSString/NSString+JKDictionaryValue.{h,m}'
      end
      nsstring.subspec 'Emoji' do |emoji|
        emoji.source_files = 'JKCategories/Foundation/NSString/NSString+JKEmoji.{h,m}'
      end
      nsstring.subspec 'Encrypt' do |encrypt|
        encrypt.source_files = 'JKCategories/Foundation/NSString/NSString+JKEncrypt.{h,m}'
      end
      nsstring.subspec 'Hash' do |hash|
        hash.source_files = 'JKCategories/Foundation/NSString/NSString+JKHash.{h,m}'
      end
      nsstring.subspec 'HTML' do |html|
        html.source_files = 'JKCategories/Foundation/NSString/NSString+JKHTML.{h,m}'
      end
      nsstring.subspec 'Matcher' do |matcher|
        matcher.source_files = 'JKCategories/Foundation/NSString/NSString+JKMatcher.{h,m}'
      end
      nsstring.subspec 'MIME' do |mime|
        mime.source_files = 'JKCategories/Foundation/NSString/NSString+JKMIME.{h,m}'
      end
      nsstring.subspec 'NormalRegex' do |normalregex|
        normalregex.source_files = 'JKCategories/Foundation/NSString/NSString+JKNormalRegex.{h,m}'
      end
      nsstring.subspec 'Pinyin' do |pinyin|
        pinyin.source_files = 'JKCategories/Foundation/NSString/NSString+JKPinyin.{h,m}'
      end
      nsstring.subspec 'RemoveEmoji' do |removeemoji|
        removeemoji.source_files = 'JKCategories/Foundation/NSString/NSString+JKRemoveEmoji.{h,m}'
      end
      nsstring.subspec 'Score' do |score|
        score.source_files = 'JKCategories/Foundation/NSString/NSString+JKScore.{h,m}'
      end
      nsstring.subspec 'Size' do |size|
        size.source_files = 'JKCategories/Foundation/NSString/NSString+JKSize.{h,m}'
      end
      nsstring.subspec 'StringPages' do |stringpages|
        stringpages.source_files = 'JKCategories/Foundation/NSString/NSString+JKStringPages.{h,m}'
      end
      nsstring.subspec 'Trims' do |trims|
        trims.source_files = 'JKCategories/Foundation/NSString/NSString+JKTrims.{h,m}'
      end
      nsstring.subspec 'URLEncode' do |urlencode|
        urlencode.source_files = 'JKCategories/Foundation/NSString/NSString+JKURLEncode.{h,m}'
      end
      nsstring.subspec 'UUID' do |uuid|
        uuid.source_files = 'JKCategories/Foundation/NSString/NSString+JKUUID.{h,m}'
      end
      nsstring.subspec 'XMLDictionary' do |xmldictionary|
        xmldictionary.source_files = 'JKCategories/Foundation/NSString/NSString+JKXMLDictionary.{h,m}'
      end
    end
    foundation.subspec 'NSTimer' do |nstimer|
      nstimer.subspec 'Addition' do |addition|
        addition.source_files = 'JKCategories/Foundation/NSTimer/NSTimer+JKAddition.{h,m}'
      end
      nstimer.subspec 'Blocks' do |blocks|
        blocks.source_files = 'JKCategories/Foundation/NSTimer/NSTimer+JKBlocks.{h,m}'
      end
    end
    foundation.subspec 'NSURL' do |nsurl|
      nsurl.subspec 'Param' do |param|
        param.source_files = 'JKCategories/Foundation/NSURL/NSURL+JKParam.{h,m}'
      end
      nsurl.subspec 'QueryDictionary' do |querydictionary|
        querydictionary.source_files = 'JKCategories/Foundation/NSURL/NSURL+JKQueryDictionary.{h,m}'
      end
    end
    foundation.subspec 'NSURLConnection' do |nsurlconnection|
      nsurlconnection.subspec 'SelfSigned' do |selfsigned|
        selfsigned.source_files = 'JKCategories/Foundation/NSURLConnection/NSURLConnection+JKSelfSigned.{h,m}'
      end
    end
    foundation.subspec 'NSURLRequest' do |nsurlrequest|
      nsurlrequest.subspec 'Upload' do |upload|
        upload.source_files = 'JKCategories/Foundation/NSURLRequest/NSMutableURLRequest+JKUpload.{h,m}'
      end
      nsurlrequest.subspec 'ParamsFromDictionary' do |paramsfromdictionary|
        paramsfromdictionary.source_files = 'JKCategories/Foundation/NSURLRequest/NSURLRequest+JKParamsFromDictionary.{h,m}'
      end
    end
    foundation.subspec 'NSURLSession' do |nsurlsession|
      nsurlsession.subspec 'SynchronousTask' do |synchronoustask|
        synchronoustask.source_files = 'JKCategories/Foundation/NSURLSession/NSURLSession+JKSynchronousTask.{h,m}'
      end
    end
    foundation.subspec 'NSUserDefaults' do |nsuserdefaults|
      nsuserdefaults.subspec 'iCloudSync' do |icloudsync|
        icloudsync.source_files = 'JKCategories/Foundation/NSUserDefaults/NSUserDefaults+JKiCloudSync.{h,m}'
      end
      nsuserdefaults.subspec 'SafeAccess' do |safeaccess|
        safeaccess.source_files = 'JKCategories/Foundation/NSUserDefaults/NSUserDefaults+JKSafeAccess.{h,m}'
      end
    end
  end

  s.subspec 'MapKit' do |mapkit|
    mapkit.subspec 'MKMapView' do |mkmapview|
      mkmapview.subspec 'BetterMaps' do |bettermaps|
        bettermaps.source_files = 'JKCategories/MapKit/MKMapView/MKMapView+JKBetterMaps.{h,m}'
      end
      mkmapview.subspec 'MoveLogo' do |movelogo|
        movelogo.source_files = 'JKCategories/MapKit/MKMapView/MKMapView+JKMoveLogo.{h,m}'
      end
      mkmapview.subspec 'ZoomLevel' do |zoomlevel|
        zoomlevel.source_files = 'JKCategories/MapKit/MKMapView/MKMapView+JKZoomLevel.{h,m}'
      end
    end
  end

  s.subspec 'QuartzCore' do |quartzcore|
    quartzcore.subspec 'CAAnimation' do |caanimation|
      caanimation.subspec 'EasingEquations' do |easingequations|
        easingequations.source_files = 'JKCategories/QuartzCore/CAAnimation/CAAnimation+JKEasingEquations.{h,m}'
      end
    end
    quartzcore.subspec 'CALayer' do |calayer|
      calayer.subspec 'BorderColor' do |bordercolor|
        bordercolor.source_files = 'JKCategories/QuartzCore/CALayer/CALayer+JKBorderColor.{h,m}'
      end
    end
    quartzcore.subspec 'CAMediaTimingFunction' do |camediatimingfunction|
      camediatimingfunction.subspec 'AdditionalEquations' do |additionalequations|
        additionalequations.source_files = 'JKCategories/QuartzCore/CAMediaTimingFunction/CAMediaTimingFunction+JKAdditionalEquations.{h,m}'
      end
    end
    quartzcore.subspec 'CAShapeLayer' do |cashapelayer|
      cashapelayer.subspec 'UIBezierPath' do |uibezierpath|
        uibezierpath.source_files = 'JKCategories/QuartzCore/CAShapeLayer/CAShapeLayer+JKUIBezierPath.{h,m}'
      end
    end
    quartzcore.subspec 'CATransaction' do |catransaction|
      catransaction.subspec 'AnimateWithDuration' do |animatewithduration|
        animatewithduration.source_files = 'JKCategories/QuartzCore/CATransaction/CATransaction+JKAnimateWithDuration.{h,m}'
      end
    end
  end

  s.subspec 'UIKit' do |uikit|
    uikit.subspec 'UIAlertView' do |uialertview|
      uialertview.subspec 'Block' do |block|
        block.source_files = 'JKCategories/UIKit/UIAlertView/UIAlertView+JKBlock.{h,m}'
      end
    end
    uikit.subspec 'UIApplication' do |uiapplication|
      uiapplication.subspec 'ApplicationSize' do |applicationsize|
        applicationsize.source_files = 'JKCategories/UIKit/UIApplication/UIApplication+JKApplicationSize.{h,m}'
      end
      uiapplication.subspec 'KeyboardFrame' do |keyboardframe|
        keyboardframe.source_files = 'JKCategories/UIKit/UIApplication/UIApplication+JKKeyboardFrame.{h,m}'
      end
      uiapplication.subspec 'NetworkActivityIndicator' do |networkactivityindicator|
        networkactivityindicator.source_files = 'JKCategories/UIKit/UIApplication/UIApplication+JKNetworkActivityIndicator.{h,m}'
      end
      uiapplication.subspec 'Permissions' do |permissions|
        permissions.source_files = 'JKCategories/UIKit/UIApplication/UIApplication+JKPermissions.{h,m}'
      end
    end
    uikit.subspec 'UIBarButtonItem' do |uibarbuttonitem|
      uibarbuttonitem.subspec 'Action' do |action|
        action.source_files = 'JKCategories/UIKit/UIBarButtonItem/UIBarButtonItem+JKAction.{h,m}'
      end
      uibarbuttonitem.subspec 'Badge' do |badge|
        badge.source_files = 'JKCategories/UIKit/UIBarButtonItem/UIBarButtonItem+JKBadge.{h,m}'
      end
    end
    uikit.subspec 'UIBezierPath' do |uibezierpath|
      uibezierpath.subspec 'BasicShapes' do |basicshapes|
        basicshapes.source_files = 'JKCategories/UIKit/UIBezierPath/UIBezierPath+JKBasicShapes.{h,m}'
      end
      uibezierpath.subspec 'Length' do |length|
        length.source_files = 'JKCategories/UIKit/UIBezierPath/UIBezierPath+JKLength.{h,m}'
      end
      uibezierpath.subspec 'SVGString' do |svgstring|
        svgstring.source_files = 'JKCategories/UIKit/UIBezierPath/UIBezierPath+JKSVGString.{h,m}'
      end
      uibezierpath.subspec 'Symbol' do |symbol|
        symbol.source_files = 'JKCategories/UIKit/UIBezierPath/UIBezierPath+JKSymbol.{h,m}'
      end
      uibezierpath.subspec 'ThroughPointsBezier' do |throughpointsbezier|
        throughpointsbezier.source_files = 'JKCategories/UIKit/UIBezierPath/UIBezierPath+JKThroughPointsBezier.{h,m}'
      end
    end
    uikit.subspec 'UIButton' do |uibutton|
      uibutton.subspec 'BackgroundColor' do |backgroundcolor|
        backgroundcolor.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKBackgroundColor.{h,m}'
      end
      uibutton.subspec 'Badge' do |badge|
        badge.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKBadge.{h,m}'
      end
      uibutton.subspec 'Block' do |block|
        block.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKBlock.{h,m}'
      end
      uibutton.subspec 'CountDown' do |countdown|
        countdown.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKCountDown.{h,m}'
      end
      uibutton.subspec 'ImagePosition' do |imageposition|
        imageposition.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKImagePosition.{h,m}'
      end
      uibutton.subspec 'Indicator' do |indicator|
        indicator.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKIndicator.{h,m}'
      end
      uibutton.subspec 'MiddleAligning' do |middlealigning|
        middlealigning.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKMiddleAligning.{h,m}'
      end
      uibutton.subspec 'Submitting' do |submitting|
        submitting.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKSubmitting.{h,m}'
      end
      uibutton.subspec 'TouchAreaInsets' do |touchareainsets|
        touchareainsets.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKTouchAreaInsets.{h,m}'
      end
    end
    uikit.subspec 'UIColor' do |uicolor|
      uicolor.subspec 'Gradient' do |gradient|
        gradient.source_files = 'JKCategories/UIKit/UIColor/UIColor+JKGradient.{h,m}'
      end
      uicolor.subspec 'HEX' do |hex|
        hex.source_files = 'JKCategories/UIKit/UIColor/UIColor+JKHEX.{h,m}'
      end
      uicolor.subspec 'Modify' do |modify|
        modify.source_files = 'JKCategories/UIKit/UIColor/UIColor+JKModify.{h,m}'
      end
      uicolor.subspec 'Random' do |random|
        random.source_files = 'JKCategories/UIKit/UIColor/UIColor+JKRandom.{h,m}'
      end
      uicolor.subspec 'Web' do |web|
        web.source_files = 'JKCategories/UIKit/UIColor/UIColor+JKWeb.{h,m}'
      end
    end
    uikit.subspec 'UIControl' do |uicontrol|
      uicontrol.subspec 'ActionBlocks' do |actionblocks|
        actionblocks.source_files = 'JKCategories/UIKit/UIControl/UIControl+JKActionBlocks.{h,m}'
      end
      uicontrol.subspec 'Block' do |block|
        block.source_files = 'JKCategories/UIKit/UIControl/UIControl+JKBlock.{h,m}'
      end
      uicontrol.subspec 'Sound' do |sound|
        sound.source_files = 'JKCategories/UIKit/UIControl/UIControl+JKSound.{h,m}'
      end
    end
    uikit.subspec 'UIDevice' do |uidevice|
      uidevice.subspec 'Hardware' do |hardware|
        hardware.source_files = 'JKCategories/UIKit/UIDevice/UIDevice+JKHardware.{h,m}'
      end
      uidevice.subspec 'PasscodeStatus' do |passcodestatus|
        passcodestatus.source_files = 'JKCategories/UIKit/UIDevice/UIDevice+JKPasscodeStatus.{h,m}'
      end
    end
    uikit.subspec 'UIFont' do |uifont|
      uifont.subspec 'CustomLoader' do |customloader|
        customloader.source_files = 'JKCategories/UIKit/UIFont/UIFont+JKCustomLoader.{h,m}'
      end
      uifont.subspec 'DynamicFontControl' do |dynamicfontcontrol|
        dynamicfontcontrol.source_files = 'JKCategories/UIKit/UIFont/UIFont+JKDynamicFontControl.{h,m}'
      end
      uifont.subspec 'TTF' do |ttf|
        ttf.source_files = 'JKCategories/UIKit/UIFont/UIFont+JKTTF.{h,m}'
      end
    end
    uikit.subspec 'UIImage' do |uiimage|
      uiimage.subspec 'Alpha' do |alpha|
        alpha.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKAlpha.{h,m}'
      end
      uiimage.subspec 'BetterFace' do |betterface|
        betterface.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKBetterFace.{h,m}'
      end
      uiimage.subspec 'Blur' do |blur|
        blur.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKBlur.{h,m}'
      end
      uiimage.subspec 'Capture' do |capture|
        capture.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKCapture.{h,m}'
      end
      uiimage.subspec 'Color' do |color|
        color.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKColor.{h,m}'
      end
      uiimage.subspec 'Crop' do |crop|
        crop.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKCrop.{h,m}'
      end
      uiimage.subspec 'FileName' do |filename|
        filename.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKFileName.{h,m}'
      end
      uiimage.subspec 'GIF' do |gif|
        gif.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKGIF.{h,m}'
      end
      uiimage.subspec 'Mask' do |mask|
        mask.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKMask.{h,m}'
      end
      uiimage.subspec 'Merge' do |merge|
        merge.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKMerge.{h,m}'
      end
      uiimage.subspec 'Reflect' do |reflect|
        reflect.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKReflect.{h,m}'
      end
      uiimage.subspec 'RemoteSize' do |remotesize|
        remotesize.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKRemoteSize.{h,m}'
      end
      uiimage.subspec 'Resize' do |resize|
        resize.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKResize.{h,m}'
      end
      uiimage.subspec 'Rotate' do |rotate|
        rotate.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKRotate.{h,m}'
      end
      uiimage.subspec 'RoundedCorner' do |roundedcorner|
        roundedcorner.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKRoundedCorner.{h,m}'
      end
      uiimage.subspec 'SampleBuffer' do |samplebuffer|
        samplebuffer.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKSampleBuffer.{h,m}'
      end
      uiimage.subspec 'Shadow' do |shadow|
        shadow.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKShadow.{h,m}'
      end
      uiimage.subspec 'SuperCompress' do |supercompress|
        supercompress.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKSuperCompress.{h,m}'
      end
      uiimage.subspec 'Thumbnail' do |thumbnail|
        thumbnail.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKThumbnail.{h,m}'
      end
      uiimage.subspec 'Vector' do |vector|
        vector.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKVector.{h,m}'
      end
    end
    uikit.subspec 'UIImageView' do |uiimageview|
      uiimageview.subspec 'Addition' do |addition|
        addition.source_files = 'JKCategories/UIKit/UIImageView/UIImageView+JKAddition.{h,m}'
      end
      uiimageview.subspec 'BetterFace' do |betterface|
        betterface.source_files = 'JKCategories/UIKit/UIImageView/UIImageView+JKBetterFace.{h,m}'
      end
      uiimageview.subspec 'FaceAwareFill' do |faceawarefill|
        faceawarefill.source_files = 'JKCategories/UIKit/UIImageView/UIImageView+JKFaceAwareFill.{h,m}'
      end
      uiimageview.subspec 'GeometryConversion' do |geometryconversion|
        geometryconversion.source_files = 'JKCategories/UIKit/UIImageView/UIImageView+JKGeometryConversion.{h,m}'
      end
      uiimageview.subspec 'Letters' do |letters|
        letters.source_files = 'JKCategories/UIKit/UIImageView/UIImageView+JKLetters.{h,m}'
      end
      uiimageview.subspec 'Reflect' do |reflect|
        reflect.source_files = 'JKCategories/UIKit/UIImageView/UIImageView+JKReflect.{h,m}'
      end
    end
    uikit.subspec 'UILable' do |uilable|
      uilable.subspec 'AdjustableLabel' do |adjustablelabel|
        adjustablelabel.source_files = 'JKCategories/UIKit/UILable/UILabel+JKAdjustableLabel.{h,m}'
      end
      uilable.subspec 'AutomaticWriting' do |automaticwriting|
        automaticwriting.source_files = 'JKCategories/UIKit/UILable/UILabel+JKAutomaticWriting.{h,m}'
      end
      uilable.subspec 'AutoSize' do |autosize|
        autosize.source_files = 'JKCategories/UIKit/UILable/UILabel+JKAutoSize.{h,m}'
      end
      uilable.subspec 'SuggestSize' do |suggestsize|
        suggestsize.source_files = 'JKCategories/UIKit/UILable/UILabel+JKSuggestSize.{h,m}'
      end
    end
    uikit.subspec 'UINavigationBar' do |uinavigationbar|
      uinavigationbar.subspec 'Awesome' do |awesome|
        awesome.source_files = 'JKCategories/UIKit/UINavigationBar/UINavigationBar+JKAwesome.{h,m}'
      end
    end
    uikit.subspec 'UINavigationController' do |uinavigationcontroller|
      uinavigationcontroller.subspec 'KeyboardFix' do |keyboardfix|
        keyboardfix.source_files = 'JKCategories/UIKit/UINavigationController/UINavigationController+JKKeyboardFix.{h,m}'
      end
      uinavigationcontroller.subspec 'StackManager' do |stackmanager|
        stackmanager.source_files = 'JKCategories/UIKit/UINavigationController/UINavigationController+JKStackManager.{h,m}'
      end
      uinavigationcontroller.subspec 'Transitions' do |transitions|
        transitions.source_files = 'JKCategories/UIKit/UINavigationController/UINavigationController+JKTransitions.{h,m}'
      end
    end
    uikit.subspec 'UINavigationItem' do |uinavigationitem|
      uinavigationitem.subspec 'Loading' do |loading|
        loading.source_files = 'JKCategories/UIKit/UINavigationItem/UINavigationItem+JKLoading.{h,m}'
      end
      uinavigationitem.subspec 'Lock' do |lock|
        lock.source_files = 'JKCategories/UIKit/UINavigationItem/UINavigationItem+JKLock.{h,m}'
      end
      uinavigationitem.subspec 'Margin' do |margin|
        margin.source_files = 'JKCategories/UIKit/UINavigationItem/UINavigationItem+JKMargin.{h,m}'
      end
    end
    uikit.subspec 'UIPopoverController' do |uipopovercontroller|
      uipopovercontroller.subspec 'hone' do |hone|
        hone.source_files = 'JKCategories/UIKit/UIPopoverController/UIPopoverController+iPhone.{h,m}'
      end
    end
    uikit.subspec 'UIResponder' do |uiresponder|
      uiresponder.subspec 'Chain' do |chain|
        chain.source_files = 'JKCategories/UIKit/UIResponder/UIResponder+JKChain.{h,m}'
      end
      uiresponder.subspec 'FirstResponder' do |firstresponder|
        firstresponder.source_files = 'JKCategories/UIKit/UIResponder/UIResponder+JKFirstResponder.{h,m}'
      end
    end
    uikit.subspec 'UIScreen' do |uiscreen|
      uiscreen.subspec 'Frame' do |frame|
        frame.source_files = 'JKCategories/UIKit/UIScreen/UIScreen+JKFrame.{h,m}'
      end
    end
    uikit.subspec 'UIScrollView' do |uiscrollview|
      uiscrollview.subspec 'Addition' do |addition|
        addition.source_files = 'JKCategories/UIKit/UIScrollView/UIScrollView+JKAddition.{h,m}'
      end
      uiscrollview.subspec 'Pages' do |pages|
        pages.source_files = 'JKCategories/UIKit/UIScrollView/UIScrollView+JKPages.{h,m}'
      end
    end
    uikit.subspec 'UISearchBar' do |uisearchbar|
      uisearchbar.subspec 'Blocks' do |blocks|
        blocks.source_files = 'JKCategories/UIKit/UISearchBar/UISearchBar+JKBlocks.{h,m}'
      end
    end
    uikit.subspec 'UISplitViewController' do |uisplitviewcontroller|
      uisplitviewcontroller.subspec 'QuickAccess' do |quickaccess|
        quickaccess.source_files = 'JKCategories/UIKit/UISplitViewController/UISplitViewController+JKQuickAccess.{h,m}'
      end
    end
    uikit.subspec 'UITableView' do |uitableview|
      uitableview.subspec 'iOS7Style' do |ios7style|
        ios7style.source_files = 'JKCategories/UIKit/UITableView/UITableView+JKiOS7Style.{h,m}'
      end
    end
    uikit.subspec 'UITableViewCell' do |uitableviewcell|
      uitableviewcell.subspec 'DelaysContentTouches' do |delayscontenttouches|
        delayscontenttouches.source_files = 'JKCategories/UIKit/UITableViewCell/UITableViewCell+JKDelaysContentTouches.{h,m}'
      end
      uitableviewcell.subspec 'NIB' do |nib|
        nib.source_files = 'JKCategories/UIKit/UITableViewCell/UITableViewCell+JKNIB.{h,m}'
      end
    end
    uikit.subspec 'UITextField' do |uitextfield|
      uitextfield.subspec 'Blocks' do |blocks|
        blocks.source_files = 'JKCategories/UIKit/UITextField/UITextField+JKBlocks.{h,m}'
      end
      uitextfield.subspec 'History' do |history|
        history.source_files = 'JKCategories/UIKit/UITextField/UITextField+JKHistory.{h,m}'
      end
      uitextfield.subspec 'InputLimit' do |inputlimit|
        inputlimit.source_files = 'JKCategories/UIKit/UITextField/UITextField+JKInputLimit.{h,m}'
      end
      uitextfield.subspec 'Select' do |select|
        select.source_files = 'JKCategories/UIKit/UITextField/UITextField+JKSelect.{h,m}'
      end
      uitextfield.subspec 'Shake' do |shake|
        shake.source_files = 'JKCategories/UIKit/UITextField/UITextField+JKShake.{h,m}'
      end
    end
    uikit.subspec 'UITextView' do |uitextview|
      uitextview.subspec 'InputLimit' do |inputlimit|
        inputlimit.source_files = 'JKCategories/UIKit/UITextView/UITextView+JKInputLimit.{h,m}'
      end
      uitextview.subspec 'PinchZoom' do |pinchzoom|
        pinchzoom.source_files = 'JKCategories/UIKit/UITextView/UITextView+JKPinchZoom.{h,m}'
      end
      uitextview.subspec 'PlaceHolder' do |placeholder|
        placeholder.source_files = 'JKCategories/UIKit/UITextView/UITextView+JKPlaceHolder.{h,m}'
      end
      uitextview.subspec 'Select' do |select|
        select.source_files = 'JKCategories/UIKit/UITextView/UITextView+JKSelect.{h,m}'
      end
    end
    uikit.subspec 'UIView' do |uiview|
      uiview.subspec 'Animation' do |animation|
        animation.source_files = 'JKCategories/UIKit/UIView/UIView+JKAnimation.{h,m}'
      end
      uiview.subspec 'BlockGesture' do |blockgesture|
        blockgesture.source_files = 'JKCategories/UIKit/UIView/UIView+JKBlockGesture.{h,m}'
      end
      uiview.subspec 'Border' do |border|
        border.source_files = 'JKCategories/UIKit/UIView/UIView+JKBorder.{h,m}'
      end
      uiview.subspec 'Constraints' do |constraints|
        constraints.source_files = 'JKCategories/UIKit/UIView/UIView+JKConstraints.{h,m}'
      end
      uiview.subspec 'CustomBorder' do |customborder|
        customborder.source_files = 'JKCategories/UIKit/UIView/UIView+JKCustomBorder.{h,m}'
      end
      uiview.subspec 'Draggable' do |draggable|
        draggable.source_files = 'JKCategories/UIKit/UIView/UIView+JKDraggable.{h,m}'
      end
      uiview.subspec 'Find' do |find|
        find.source_files = 'JKCategories/UIKit/UIView/UIView+JKFind.{h,m}'
      end
      uiview.subspec 'Frame' do |frame|
        frame.source_files = 'JKCategories/UIKit/UIView/UIView+JKFrame.{h,m}'
      end
      uiview.subspec 'Nib' do |nib|
        nib.source_files = 'JKCategories/UIKit/UIView/UIView+JKNib.{h,m}'
      end
      uiview.subspec 'Recursion' do |recursion|
        recursion.source_files = 'JKCategories/UIKit/UIView/UIView+JKRecursion.{h,m}'
      end
      uiview.subspec 'RedDot' do |reddot|
        reddot.source_files = 'JKCategories/UIKit/UIView/UIView+JKRedDot.{h,m}'
      end
      uiview.subspec 'Screenshot' do |screenshot|
        screenshot.source_files = 'JKCategories/UIKit/UIView/UIView+JKScreenshot.{h,m}'
      end
      uiview.subspec 'Shake' do |shake|
        shake.source_files = 'JKCategories/UIKit/UIView/UIView+JKShake.{h,m}'
      end
      uiview.subspec 'Toast' do |toast|
        toast.source_files = 'JKCategories/UIKit/UIView/UIView+JKToast.{h,m}'
      end
      uiview.subspec 'Visuals' do |visuals|
        visuals.source_files = 'JKCategories/UIKit/UIView/UIView+JKVisuals.{h,m}'
      end
    end
    uikit.subspec 'UIViewController' do |uiviewcontroller|
      uiviewcontroller.subspec 'BackButtonItemTitle' do |backbuttonitemtitle|
        backbuttonitemtitle.source_files = 'JKCategories/UIKit/UIViewController/UIViewController+JKBackButtonItemTitle.{h,m}'
      end
      uiviewcontroller.subspec 'BackButtonTouched' do |backbuttontouched|
        backbuttontouched.source_files = 'JKCategories/UIKit/UIViewController/UIViewController+JKBackButtonTouched.{h,m}'
      end
      uiviewcontroller.subspec 'BlockSegue' do |blocksegue|
        blocksegue.source_files = 'JKCategories/UIKit/UIViewController/UIViewController+JKBlockSegue.{h,m}'
      end
      uiviewcontroller.subspec 'RecursiveDescription' do |recursivedescription|
        recursivedescription.source_files = 'JKCategories/UIKit/UIViewController/UIViewController+JKRecursiveDescription.{h,m}'
      end
      uiviewcontroller.subspec 'StoreKit' do |storekit|
        storekit.source_files = 'JKCategories/UIKit/UIViewController/UIViewController+JKStoreKit.{h,m}'
      end
      uiviewcontroller.subspec 'Visible' do |visible|
        visible.source_files = 'JKCategories/UIKit/UIViewController/UIViewController+JKVisible.{h,m}'
      end
    end
    uikit.subspec 'UIWebView' do |uiwebview|
      uiwebview.subspec 'Blocks' do |blocks|
        blocks.source_files = 'JKCategories/UIKit/UIWebView/UIWebView+JKBlocks.{h,m}'
      end
      uiwebview.subspec 'Canvas' do |canvas|
        canvas.source_files = 'JKCategories/UIKit/UIWebView/UIWebView+JKCanvas.{h,m}'
      end
      uiwebview.subspec 'JavaScript' do |javascript|
        javascript.source_files = 'JKCategories/UIKit/UIWebView/UIWebView+JKJavaScript.{h,m}'
      end
      uiwebview.subspec 'Load' do |load|
        load.source_files = 'JKCategories/UIKit/UIWebView/UIWebView+JKLoad.{h,m}'
      end
      uiwebview.subspec 'LoadInfo' do |loadinfo|
        loadinfo.source_files = 'JKCategories/UIKit/UIWebView/UIWebView+JKLoadInfo.{h,m}'
      end
      uiwebview.subspec 'MetaParser' do |metaparser|
        metaparser.source_files = 'JKCategories/UIKit/UIWebView/UIWebView+JKMetaParser.{h,m}'
      end
      uiwebview.subspec 'Style' do |style|
        style.source_files = 'JKCategories/UIKit/UIWebView/UIWebView+JKStyle.{h,m}'
      end
      uiwebview.subspec 'SwipeGesture' do |swipegesture|
        swipegesture.source_files = 'JKCategories/UIKit/UIWebView/UIWebVIew+JKSwipeGesture.{h,m}'
      end
      uiwebview.subspec 'WebStorage' do |webstorage|
        webstorage.source_files = 'JKCategories/UIKit/UIWebView/UIWebView+JKWebStorage.{h,m}'
      end
    end
    uikit.subspec 'UIWindow' do |uiwindow|
      uiwindow.subspec 'Hierarchy' do |hierarchy|
        hierarchy.source_files = 'JKCategories/UIKit/UIWindow/UIWindow+JKHierarchy.{h,m}'
      end
    end
  end
