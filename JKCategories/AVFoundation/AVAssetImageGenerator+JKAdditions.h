//
//  AVAssetImageGenerator+JKAdditions.h
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 20/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@interface AVAssetImageGenerator (JKAdditions)

+ (UIImage *)jk_firstFrameStillImageFromVideoOfURL:(NSURL *)URLOfVideo;

+ (UIImage *)jk_stillImageFromVideoOfURL:(NSURL *)URLOfVideo atTime:(CMTime)requestedTime;

@end
