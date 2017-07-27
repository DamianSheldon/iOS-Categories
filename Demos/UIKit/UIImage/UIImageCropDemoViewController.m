//
//  UIImageCropDemoViewController.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 27/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <DMLWidget/DMLCollectionViewCell.h>

#import "UIImage+JKCrop.h"

#import "UIImageCropDemoViewController.h"

@interface UIImageCropDemoViewController ()<UICollectionViewDelegateFlowLayout>

@end

@implementation UIImageCropDemoViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Crop Demo";
    
    // Register cell classes
    [self.collectionView registerClass:[DMLCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    self.collectionView.backgroundColor = [UIColor whiteColor];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DMLCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    UIImage *originImage = [UIImage imageNamed:@"F"];
    
    CGRect rect = [self rectForItemAtIndexPath:indexPath];
    
    NSLog(@"Crop rect:%@", NSStringFromCGRect(rect));
    
    UIImage *croppedImage = [originImage jk_croppedImageInRect:rect];
    cell.imageView.image = croppedImage;
    
    cell.layer.borderColor = [UIColor redColor].CGColor;
    cell.layer.borderWidth = 1.0;
    
    return cell;
}

#pragma mark <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize size = [self rectForItemAtIndexPath:indexPath].size;
    
    UIImage *originImage = [UIImage imageNamed:@"F"];
    
    size.width /= originImage.scale;
    size.height /= originImage.scale;
    
    return size;
}

- (CGRect)rectForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIImage *originImage = [UIImage imageNamed:@"F"];
    
    CGRect rect = CGRectMake(0, 0, originImage.size.width * originImage.scale, originImage.size.height *originImage.scale);
    
    switch (indexPath.row) {
        case 1:
            rect.size.width *= 0.5;
            break;
        
        case 2:
            rect.size.width *= 0.5;
            rect.origin.x = rect.size.width;
            
            break;
            
        case 3:
            rect.size.height *= 0.5;
            break;
            
        case 4:
            rect.size.height *= 0.5;
            rect.origin.y = rect.size.height;
            break;
            
        case 5:
            rect.size.width *= 0.5;
            rect.size.height *= 0.5;
            
            rect.origin.x = 0.5 * rect.size.width;
            rect.origin.y = 0.5 * rect.size.height;
            break;
            
        default:
            break;
    }
    
    return rect;
}

@end
