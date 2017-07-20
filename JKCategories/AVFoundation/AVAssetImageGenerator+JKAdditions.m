//
//  AVAssetImageGenerator+JKAdditions.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 20/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import "AVAssetImageGenerator+JKAdditions.h"

@import UIKit;

@implementation AVAssetImageGenerator (JKAdditions)

+ (UIImage *)jk_firstFrameStillImageFromVideoOfURL:(NSURL *)URLOfVideo
{
    CMTime startpoint = CMTimeMakeWithSeconds(0, 600);
    return [self jk_stillImageFromVideoOfURL:URLOfVideo atTime:startpoint];
}

+ (UIImage *)jk_stillImageFromVideoOfURL:(NSURL *)URLOfVideo atTime:(CMTime)requestedTime
{
    if (!URLOfVideo) {
        return nil;
    }
    
    AVAsset *asset;
    AVAssetImageGenerator *imageGenerator = [[AVAssetImageGenerator alloc] initWithAsset:asset];

    NSError *error;
    CMTime actualTime;
    
    CGImageRef requestedTimeImage = [imageGenerator copyCGImageAtTime:requestedTime actualTime:&actualTime error:&error];
    
    if (requestedTimeImage != NULL) {
        
        NSString *actualTimeString = (NSString *)CFBridgingRelease(CMTimeCopyDescription(NULL, actualTime));
        NSString *requestedTimeString = (NSString *)CFBridgingRelease(CMTimeCopyDescription(NULL, requestedTime));
        NSLog(@"Got halfWayImage: Asked for %@, got %@", requestedTimeString, actualTimeString);
        
        // Do something interesting with the image.
        UIImage *resultImage = [UIImage imageWithCGImage:requestedTimeImage];
        
        CGImageRelease(requestedTimeImage);
        
        return resultImage;
    }
    else {
        return nil;
    }
}

@end
