//
//  UIView+JKBorder.h
//  JKCategories-Demo
//
//  Created by DongMeiliang on 08/05/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JKBorder)

/*
    Create a bottom border if it doesn't exist, otherwise update its frame.
    Border's default color is darkGrayColor
 */
- (void)jk_enableBottomBorder;

- (void)jk_setBottomBorderWidth:(CGFloat)width;

- (void)jk_setBottomBorderColor:(UIColor *)color;

@end
