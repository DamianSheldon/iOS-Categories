//
//  UIView+JKBorder.m
//  JKCategories-Demo
//
//  Created by DongMeiliang on 08/05/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <objc/runtime.h>

#import "UIView+JKBorder.h"

static void *JKBottomBorderKey = @"JKBottomBorderKey";
static void *JKBottomBorderWidthKey = @"JKBottomBorderWidthKey";
static void *JKBottomBorderColorKey = @"JKBottomBorderColorKey";

@implementation UIView (JKBorder)

#pragma mark - Private Methods

- (CALayer *)jk_bottomBorder
{
    CALayer *bottomBorder = objc_getAssociatedObject(self, JKBottomBorderKey);
    
    if (!bottomBorder) {
        bottomBorder = [CALayer layer];
        
        [self jk_setBottomBorder:bottomBorder];
        
        self.layer.masksToBounds = YES;
        [self.layer addSublayer:bottomBorder];
    }
    
    return bottomBorder;
}

- (void)jk_setBottomBorder:(CALayer *)bottomBorder
{
    objc_setAssociatedObject(self, JKBottomBorderKey, bottomBorder, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)jk_bottomBorderColor
{
    UIColor *borderColor = objc_getAssociatedObject(self, JKBottomBorderColorKey);
    if (!borderColor) {
        borderColor = [UIColor darkGrayColor];
    }
    
    return borderColor;
}

- (void)jk_setBottomBorderColor:(UIColor *)color
{
    objc_setAssociatedObject(self, JKBottomBorderColorKey, color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    CALayer *bottomBorder = [self jk_bottomBorder];
    bottomBorder.backgroundColor = color.CGColor;
}

- (NSNumber *)jk_bottomBorderWidth
{
    NSNumber *width = objc_getAssociatedObject(self, JKBottomBorderWidthKey);
    if (!width) {
        width = [NSNumber numberWithFloat:0.6];
    }
    return width;
}

- (void)jk_setBottomBorderWidth:(CGFloat)width
{
    NSNumber *widthWrapper = [NSNumber numberWithFloat:width];
    objc_setAssociatedObject(self, JKBottomBorderWidthKey, widthWrapper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    CALayer *bottomBorder = [self jk_bottomBorder];
    
    bottomBorder.frame = CGRectMake(0, CGRectGetHeight(self.frame) - width, CGRectGetWidth(self.frame), width);
}

#pragma mark - Public Methods

- (void)jk_enableBottomBorder
{
    CALayer *bottomBorder = [self jk_bottomBorder];
    
    bottomBorder.backgroundColor = [self jk_bottomBorderColor].CGColor;
    
    NSNumber *widthWrapper = [self jk_bottomBorderWidth];
    float width = widthWrapper.floatValue;
    
    bottomBorder.frame = CGRectMake(0, CGRectGetHeight(self.frame) - width, CGRectGetWidth(self.frame), width);
}


@end
