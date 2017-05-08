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
    Border's color is tintColor
 */
- (void)jk_enableBottomBorder;

@end
