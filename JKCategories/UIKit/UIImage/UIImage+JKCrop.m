//
//  UIImage+JKCrop.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 27/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import "UIImage+JKCrop.h"

@implementation UIImage (JKCrop)

- (UIImage *)jk_croppedImageInRect:(CGRect)rect
{
    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], rect);
    UIImage *croppedImage = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];
    CGImageRelease(imageRef);
    
    return croppedImage;
}
@end
