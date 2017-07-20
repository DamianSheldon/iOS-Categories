//
//  UIButtonDemoViewController.m
//  JKCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 15/3/29.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import "UIButtonDemoViewController.h"
#import "UIButton+JKCountDown.h"
#import "UIButton+JKBlock.h"
#import "UIControl+JKActionBlocks.h"
#import "UIControl+JKBlock.h"
#import "UIView+JKRedDot.h"

@interface UIButtonDemoViewController ()

@end

@implementation UIButtonDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.blockButton jk_handleControlEvents:UIControlEventTouchDragInside withBlock:^(id weakSender) {
        NSLog(@"UIControlEventTouchDragInside");
    }];
    [self.blockButton jk_handleControlEvents:UIControlEventTouchUpInside withBlock:^(UIButton *weakSender) {
        NSLog(@"UIControlEventTouchUpInside");
        
        [weakSender jk_hideRedDot];
    }];
    
    [self.blockButton jk_touchUpInside:^{
        NSLog(@"touchUpInside");

    }];
    [self.blockButton jk_touchDown:^{
        NSLog(@"touchDown");
        
    }];
   
    [self.blockButton jk_showTopRightRedDot];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)countButtonTouchd:(UIButton *)sender {
    [sender setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    
    [sender jk_startCountDownFromCount:60 waitTitle:@"#秒后重新获取"];
}
@end
