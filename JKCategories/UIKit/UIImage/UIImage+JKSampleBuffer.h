//
//  UIImage+JKSampleBuffer.h
//  JKCategories-Demo
//
//  Created by DongMeiliang on 17/05/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMedia/CoreMedia.h>

@interface UIImage (JKSampleBuffer)

+ (UIImage *)jk_imageFromSampleBuffer:(CMSampleBufferRef)sampleBuffer;

@end
