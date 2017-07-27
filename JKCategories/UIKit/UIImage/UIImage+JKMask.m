//
//  UIImage+JKMask.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 27/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import "UIImage+JKMask.h"

@implementation UIImage (JKMask)

- (UIImage *)jk_imageWithMask:(UIImage *)maskImage;
{
    //create drawing context
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //apply mask
    CGContextClipToMask(context, CGRectMake(0.0f, 0.0f, self.size.width, self.size.height), maskImage.CGImage);
    
    //draw image
    [self drawAtPoint:CGPointZero];
    
    //capture resultant image
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //return image
    return image;
}

- (UIImage *)jk_maskImageFromImageAlpha
{
    //get dimensions
    NSInteger width = CGImageGetWidth(self.CGImage);
    NSInteger height = CGImageGetHeight(self.CGImage);
    
    //create alpha image
    NSInteger bytesPerRow = ((width + 3) / 4) * 4;
    void *data = calloc(bytesPerRow * height, sizeof(unsigned char *));
    CGContextRef context = CGBitmapContextCreate(data, width, height, 8, bytesPerRow, NULL, kCGImageAlphaOnly);
    CGContextDrawImage(context, CGRectMake(0.0f, 0.0f, width, height), self.CGImage);
    
    //invert alpha pixels
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            NSInteger index = y * bytesPerRow + x;
            ((unsigned char *)data)[index] = 255 - ((unsigned char *)data)[index];
        }
    }
    
    //create mask image
    CGImageRef maskRef = CGBitmapContextCreateImage(context);
    CGContextRelease(context);
    UIImage *mask = [UIImage imageWithCGImage:maskRef];
    CGImageRelease(maskRef);
    free(data);
    
    //return image
    return mask;
}

@end
