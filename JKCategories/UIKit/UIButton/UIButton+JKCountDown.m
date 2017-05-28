//
//  UIButton+countDown.m
//  NetworkEgOc
//
//  Created by iosdev on 15/3/17.
//  Copyright (c) 2015年 iosdev. All rights reserved.
//

#import "UIButton+JKCountDown.h"

@implementation UIButton (JKCountDown)

- (void)jk_startCountDownFromCount:(NSInteger)count waitTitle:(NSString *)waitTitle
{
    if (count <= 0) {
        return;
    }
    __weak typeof(self) weakSelf = self;
    __block NSInteger timeOut = count; //倒计时时间
    
    self.enabled = NO;
    self.layer.borderColor = [self titleColorForState:UIControlStateDisabled].CGColor;

    [self setTitle:[waitTitle stringByReplacingOccurrencesOfString:@"#" withString:[NSString stringWithFormat:@"%ld", (long)count]] forState:UIControlStateDisabled];
    [self sizeToFit];
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
    dispatch_source_set_event_handler(_timer, ^{
        __strong typeof (self) strongSelf = weakSelf;
        
        --timeOut;

        if (timeOut <= 0) { //倒计时结束，关闭
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                strongSelf.enabled = YES;
                strongSelf.layer.borderColor = [self titleColorForState:UIControlStateNormal].CGColor;
                [strongSelf sizeToFit];
            });
        }
        else {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                [strongSelf setTitle:[waitTitle stringByReplacingOccurrencesOfString:@"#" withString:[NSString stringWithFormat:@"%ld", (long)timeOut]] forState:UIControlStateDisabled];
                [strongSelf sizeToFit];
            });
        }
    });
    dispatch_resume(_timer);
    
}
@end
