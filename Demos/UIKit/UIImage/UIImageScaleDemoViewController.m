//
//  UIImageScaleDemoViewController.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 26/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <DMLWidget/DMLCollectionViewCell.h>

#import "UIImageScaleDemoViewController.h"

static NSInteger const sTotalScaleSteps = 20;

static NSString *const sScaleCellID = @"sScaleCellID";

@interface UIImageScaleDemoViewController ()

@end

@implementation UIImageScaleDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[DMLCollectionViewCell class] forCellWithReuseIdentifier:sScaleCellID];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return sTotalScaleSteps;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    DMLCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:sScaleCellID forIndexPath:indexPath];
    
    cell.imageView.contentMode = UIViewContentModeCenter;
    
    UIImage *originImage = [UIImage imageNamed:@"F"];
    UIImage *scaledImage;
    CGFloat scale;
    
    if (indexPath.row + 1 < sTotalScaleSteps * 0.5) {
        // Increase
        CGFloat ratio = ceil(CGRectGetWidth(collectionView.frame) / originImage.size.width);
        
        CGFloat maxScale = originImage.scale / ratio;
        CGFloat k = (1 - maxScale) / (sTotalScaleSteps * 0.5 - 1);
        CGFloat c = maxScale - k;
        
        scale = (indexPath.row + 1) * k + c;
    }
    else {
        // Decrease
        scale = originImage.scale + (indexPath.row + 1) * 0.2;
    }
    
    scaledImage = [UIImage imageWithCGImage:originImage.CGImage scale:scale orientation:originImage.imageOrientation];

    cell.imageView.image = scaledImage;
    
    cell.textLabel.text = @(scale).description;
    
    return cell;
}

#pragma mark - UICollectionViewDelegate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UIImage *originImage = [UIImage imageNamed:@"F"];
    UIImage *scaledImage;
    CGFloat scale;
    
    if (indexPath.row + 1 < sTotalScaleSteps * 0.5) {
        // Increase
        // the item width must be less than the width of the UICollectionView minus the section insets left and right values, minus the content insets left and right values.
        UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)collectionView.collectionViewLayout;
        
        CGFloat width = CGRectGetWidth(collectionView.frame) - (flowLayout.sectionInset.left + flowLayout.sectionInset.right) - (collectionView.contentInset.left + collectionView.contentInset.right);
        
        CGFloat ratio = floor(width / originImage.size.width);
        
        CGFloat maxScale = originImage.scale / ratio;
        CGFloat k = (1 - maxScale) / (sTotalScaleSteps * 0.5 - 1);
        CGFloat c = maxScale - k;
        
        scale = (indexPath.row + 1) * k + c;
    }
    else {
        // Decrease
        scale = originImage.scale + (indexPath.row + 1) * 0.2;
    }
    
    scaledImage = [UIImage imageWithCGImage:originImage.CGImage scale:scale orientation:originImage.imageOrientation];
    
    if (scaledImage.size.width < originImage.size.width) {
        return originImage.size;
    }
    else {
        return scaledImage.size;
    }
}

@end
