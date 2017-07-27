//
//  UIImage+JKShadow.h
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 27/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JKShadow)

- (UIImage *)jk_imageWithShadowColor:(UIColor *)color offset:(CGSize)offset blur:(CGFloat)blur;

@end
