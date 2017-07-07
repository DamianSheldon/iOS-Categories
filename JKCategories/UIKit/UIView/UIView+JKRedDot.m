//
//  UIView+JKRedDot.m
//  JKCategories-Demo
//
//  Created by DongMeiliang on 07/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <objc/runtime.h>

#import "UIView+JKRedDot.h"

static const CGFloat sDefaultLenghtOfSide = 4.0;

static const void *JKLengthOfSideKey = "JKLengthOfSideKey";
static const void *JKColorOfRedDotKey = "JKColorOfRedDotKey";
static const void *JKRedDotViewKey = "JKRedDotViewKey";

@implementation UIView (JKRedDot)

- (CGFloat)jk_lengthOfSide
{
    NSNumber *lengthOfSideNumber = objc_getAssociatedObject(self, JKLengthOfSideKey);
    if (lengthOfSideNumber) {
        return lengthOfSideNumber.doubleValue;
    }
    else {
        return sDefaultLenghtOfSide;
    }
}

- (void)jk_setLengthOfSide:(CGFloat)length
{
    NSNumber *lengthOfSideNumber = @(length);
    
    objc_setAssociatedObject(self, JKLengthOfSideKey, lengthOfSideNumber, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)jk_colorOfRedDot
{
    UIColor *color = objc_getAssociatedObject(self, JKColorOfRedDotKey);
    if (!color) {
        color = [UIColor redColor];
    }
    
    return color;
}

- (void)jk_setColorOfRedDot:(UIColor *)color
{
    objc_setAssociatedObject(self, JKColorOfRedDotKey, color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)jk_showTopLeftRedDot
{
    [self jk_showRedDotAtRectCorner:UIRectCornerTopLeft];
}

- (void)jk_showTopRightRedDot
{
    [self jk_showRedDotAtRectCorner:UIRectCornerTopRight];
}

- (void)jk_showBottomLeftRedDot
{
    [self jk_showRedDotAtRectCorner:UIRectCornerBottomLeft];
}

- (void)jk_showBottomRightRedDot
{
    [self jk_showRedDotAtRectCorner:UIRectCornerBottomRight];
}

- (void)jk_showRedDotAtRectCorner:(UIRectCorner)rectCorner
{
    UIView *redDotView = [self jk_redDotView];
    
    [self jk_prepareRedDotForShowing];
    
    CGFloat lengthOfSide = [self jk_lengthOfSide];

    switch (rectCorner) {
        case UIRectCornerTopLeft:
            [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
            break;
        case UIRectCornerAllCorners:
        case UIRectCornerTopRight:
            [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-lengthOfSide]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:0]];

            break;
            
        case UIRectCornerBottomLeft:
            [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:-lengthOfSide]];
            break;
            
        case UIRectCornerBottomRight:
            [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-lengthOfSide]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1 constant:-lengthOfSide]];
            break;
    }
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:lengthOfSide]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:redDotView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:lengthOfSide]];
    
    [self setNeedsLayout];
}

- (void)jk_prepareRedDotForShowing
{
    UIView *redDotView = [self jk_redDotView];
    
    CGFloat lengthOfSide = [self jk_lengthOfSide];
    
    redDotView.layer.cornerRadius = 0.5 * lengthOfSide;
    
    redDotView.backgroundColor = [self jk_colorOfRedDot];
    
    if (!redDotView.superview) {
        [self addSubview:redDotView];
    }
    
    redDotView.hidden = NO;
    
    [self bringSubviewToFront:redDotView];
}

- (void)jk_hideRedDot
{
    UIView *redDotView = [self jk_redDotView];
    
    redDotView.hidden = YES;
}

- (UIView *)jk_redDotView
{
    UIView *redDotView = objc_getAssociatedObject(self, JKRedDotViewKey);
    if (!redDotView) {
        redDotView = [UIView new];
        redDotView.translatesAutoresizingMaskIntoConstraints = NO;
        
        objc_setAssociatedObject(self, JKRedDotViewKey, redDotView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return redDotView;
}

@end
