// UIImage+Resize.h
// Created by Trevor Harmon on 8/5/09.
// Free for personal or commercial use, with or without modification.
// No warranty is expressed or implied.

// Extends the UIImage class to support resizing/cropping
#import <UIKit/UIKit.h>

@interface UIImage (JKResize)

- (UIImage *)jk_resizedImageOfSize:(CGSize)newSize;

- (UIImage *)jk_resizedImageWithContentMode:(UIViewContentMode)contentMode
                                       size:(CGSize)size;

- (UIImage *)jk_resizedImageOfSize:(CGSize)newSize
     interpolationQuality:(CGInterpolationQuality)quality;

- (UIImage *)jk_resizedImageWithContentMode:(UIViewContentMode)contentMode
                                  size:(CGSize)size
                    interpolationQuality:(CGInterpolationQuality)quality;
@end
