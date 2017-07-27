//
//  UIImage+JKMask.h
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 27/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JKMask)

- (UIImage *)jk_imageWithMask:(UIImage *)maskImage;

- (UIImage *)jk_maskImageFromImageAlpha;

@end
