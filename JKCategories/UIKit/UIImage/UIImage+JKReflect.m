//
//  UIImage+FX.m
//
//  Version 1.2.3
//
//  Created by Nick Lockwood on 31/10/2011.
//  Copyright (c) 2011 Charcoal Design
//
//  Distributed under the permissive zlib License
//  Get the latest version from here:
//
//  https://github.com/nicklockwood/FXImageView
//
//  This software is provided 'as-is', without any express or implied
//  warranty.  In no event will the authors be held liable for any damages
//  arising from the use of this software.
//
//  Permission is granted to anyone to use this software for any purpose,
//  including commercial applications, and to alter it and redistribute it
//  freely, subject to the following restrictions:
//
//  1. The origin of this software must not be misrepresented; you must not
//  claim that you wrote the original software. If you use this software
//  in a product, an acknowledgment in the product documentation would be
//  appreciated but is not required.
//
//  2. Altered source versions must be plainly marked as such, and must not be
//  misrepresented as being the original software.
//
//  3. This notice may not be removed or altered from any source distribution.
//

#import "UIImage+JKReflect.h"

@implementation UIImage (JKReflect)

+ (CGImageRef)jk_gradientMask
{
    static CGImageRef sharedMask = NULL;
    if (sharedMask == NULL)
    {
        //create gradient mask
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(1, 256), YES, 0.0);
        CGContextRef gradientContext = UIGraphicsGetCurrentContext();
        CGFloat colors[] = {0.0, 1.0, 1.0, 1.0};
        CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
        CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, colors, NULL, 2);
        CGPoint gradientStartPoint = CGPointMake(0, 0);
        CGPoint gradientEndPoint = CGPointMake(0, 256);
        CGContextDrawLinearGradient(gradientContext, gradient, gradientStartPoint,
                                    gradientEndPoint, kCGGradientDrawsAfterEndLocation);
        sharedMask = CGBitmapContextCreateImage(gradientContext);
        CGGradientRelease(gradient);
        CGColorSpaceRelease(colorSpace);
        UIGraphicsEndImageContext();
    }
    return sharedMask;
}

- (UIImage *)jk_reflectedImageWithScale:(CGFloat)scale
{
	//get reflection dimensions
	CGFloat height = ceil(self.size.height * scale);
	CGSize size = CGSizeMake(self.size.width, height);
	CGRect bounds = CGRectMake(0.0f, 0.0f, size.width, size.height);
	
	//create drawing context
	UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	//clip to gradient
	CGContextClipToMask(context, bounds, [[self class] jk_gradientMask]);
	
	//draw reflected image
	CGContextScaleCTM(context, 1.0f, -1.0f);
	CGContextTranslateCTM(context, 0.0f, -self.size.height);
	[self drawInRect:CGRectMake(0.0f, 0.0f, self.size.width, self.size.height)];
	
	//capture resultant image
	UIImage *reflection = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	//return reflection image
	return reflection;
}

- (UIImage *)jk_imageWithReflectionWithScale:(CGFloat)scale gap:(CGFloat)gap alpha:(CGFloat)alpha
{
    //get reflected image
    UIImage *reflection = [self jk_reflectedImageWithScale:scale];
    CGFloat reflectionOffset = reflection.size.height + gap;
    
    //create drawing context
	UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.size.width, self.size.height + reflectionOffset * 2.0f), NO, 0.0f);
    
    //draw reflection
    [reflection drawAtPoint:CGPointMake(0.0f, reflectionOffset + self.size.height + gap) blendMode:kCGBlendModeNormal alpha:alpha];
    
    //draw image
    [self drawAtPoint:CGPointMake(0.0f, reflectionOffset)];
    
    //capture resultant image
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	//return image
	return image;
}

@end
