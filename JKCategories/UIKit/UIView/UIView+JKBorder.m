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

@implementation UIView (JKBorder)

- (CALayer *)jk_bottomBorder
{
    return objc_getAssociatedObject(self, JKBottomBorderKey);
}

- (void)jk_setBottomBorder:(CALayer *)bottomBorder
{
    objc_setAssociatedObject(self, JKBottomBorderKey, bottomBorder, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)jk_enableBottomBorder
{
    CALayer *bottomBorder = [self jk_bottomBorder];
    if (bottomBorder) {
        bottomBorder = [CALayer layer];
        bottomBorder.backgroundColor = self.tintColor.CGColor;
        
        [self jk_setBottomBorder:bottomBorder];
        
        self.layer.masksToBounds = YES;
        [self.layer addSublayer:bottomBorder];
    }
    
    bottomBorder.frame = CGRectMake(0, CGRectGetHeight(self.frame) - 2, CGRectGetWidth(self.frame), 2);
}

@end
