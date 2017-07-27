//
//  UIImage+JKThumbnail.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 27/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import "UIImage+JKThumbnail.h"

@import ImageIO;

@implementation UIImage (JKThumbnail)

- (UIImage *)jk_thumbnailWithSize:(CGSize)size
{
    CGImageRef        thumbnailImage = NULL;
    CGImageSourceRef  imageSource;
    CFDictionaryRef   options = NULL;
    CFStringRef       keys[3];
    CFTypeRef         values[3];
    CFNumberRef       thumbnailSize;
    
    NSData *data = UIImageJPEGRepresentation(self, (CGFloat)0.7);
    
    // Create an image source from NSData; no options.
    imageSource = CGImageSourceCreateWithData((CFDataRef)data,
                                                NULL);
    // Make sure the image source exists before continuing.
    if (imageSource == NULL){
        fprintf(stderr, "Image source is NULL.");
        return  nil;
    }
    
    // Package the integer as a  CFNumber object. Using CFTypes allows you
    // to more easily create the options dictionary later.
    thumbnailSize = CFNumberCreate(NULL, kCFNumberIntType, &size);
    
    // Set up the thumbnail options.
    keys[0] = kCGImageSourceCreateThumbnailWithTransform;
    values[0] = (CFTypeRef)kCFBooleanTrue;
    keys[1] = kCGImageSourceCreateThumbnailFromImageIfAbsent;
    values[1] = (CFTypeRef)kCFBooleanTrue;
    keys[2] = kCGImageSourceThumbnailMaxPixelSize;
    values[2] = (CFTypeRef)thumbnailSize;
    
    options = CFDictionaryCreate(NULL, (const void **) keys,
                                   (const void **) values, 2,
                                   &kCFTypeDictionaryKeyCallBacks,
                                   & kCFTypeDictionaryValueCallBacks);
    
    // Create the thumbnail image using the specified options.
    thumbnailImage = CGImageSourceCreateThumbnailAtIndex(imageSource,
                                                           0,
                                                           options);
    // Release the options dictionary and the image source
    // when you no longer need them.
    CFRelease(thumbnailSize);
    CFRelease(options);
    CFRelease(imageSource);
    
    // Make sure the thumbnail image exists before continuing.
    if (thumbnailImage == NULL){
        fprintf(stderr, "Thumbnail image not created from image source.");
        return nil;
    }
    
    UIImage *image = [UIImage imageWithCGImage:thumbnailImage];
    
    CFRelease(thumbnailImage);
    
    return image;
}

@end
