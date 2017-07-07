//
//  UIView+JKRedDot.h
//  JKCategories-Demo
//
//  Created by DongMeiliang on 07/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JKRedDot)

- (CGFloat)jk_lengthOfSide; // Default is 4

- (void)jk_setLengthOfSide:(CGFloat)length;

- (UIColor *)jk_colorOfRedDot; // Default is red color

- (void)jk_setColorOfRedDot:(UIColor *)color;

- (void)jk_showTopLeftRedDot;

- (void)jk_showTopRightRedDot;

- (void)jk_showBottomLeftRedDot;

- (void)jk_showBottomRightRedDot;

- (void)jk_hideRedDot;

@end
