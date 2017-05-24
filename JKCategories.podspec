version = "1.6.9P";

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
  #s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  s.subspec 'Foundation' do |foundation|

    foundation.subspec 'NSString' do |string|
        string.source_files = 'JKCategories/Foundation/NSString/**/*.{h,m}'
        string.dependency 'JKCategories/Foundation/NSData'
    end 

    foundation.subspec 'NSData' do |data|
        data.source_files = 'JKCategories/Foundation/NSData/**/*.{h,m}'
        data.libraries = 'z'
# Fix KEncrypt.h:11:9: error: include of non-modular header inside framework module 'JKCategories.NSData_JKEncrypt': '/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator10.3.sdk/usr/include/CommonCrypto/CommonCryptor.h' [-Werror,-Wnon-modular-include-in-framework-module]
        data.user_target_xcconfig = {'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'}
    end

    foundation.subspec 'NSFileManager' do |filemanager|
        
        filemanager.source_files = 'JKCategories/Foundation/NSFileManager/*.{h,m}'

    end

  end

  s.subspec 'UIKit' do |uikit|
    
    #uikit.subspec 'Header' do |header|
    #    header.source_files = 'JKCategories/JKUIKit.h'
    #end
    
    uikit.subspec 'UIView' do |uiview|

        uiview.subspec 'Border' do |border|
            border.source_files = 'JKCategories/UIKit/UIView/UIView+JKBorder.{h,m}'
        end

        uiview.subspec 'Visuals' do |visuals|
            visuals.source_files = 'JKCategories/UIKit/UIView/UIView+JKVisuals.{h,m}'
        end

        uiview.subspec 'CustomBorder' do |customborder|
            customborder.source_files = 'JKCategories/UIKit/UIView/UIView+JKCustomBorder.{h,m}'
        end

    end

    uikit.subspec 'UIButton' do |uibutton|
        
        uibutton.subspec 'CountDown' do |countdown|
            countdown.source_files = 'JKCategories/UIKit/UIButton/UIButton+JKCountDown.{h,m}'
        end

    end

    uikit.subspec 'UIImage' do |uiimage|
        
        uiimage.subspec 'FXImage' do |fximage|
            fximage.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKFXImage.{h,m}'
        end

        uiimage.subspec 'SampleBuffer' do |samplebuffer|
            samplebuffer.source_files = 'JKCategories/UIKit/UIImage/UIImage+JKSampleBuffer.{h,m}'
            samplebuffer.frameworks = 'CoreMedia'
        end
    end

    uikit.subspec 'UIColor' do |uicolor|
        
        uicolor.subspec 'HEX' do |hex|
            hex.source_files = 'JKCategories/UIKit/UIColor/UIColor+JKHEX.{h,m}'
        end

    end

  end

end
