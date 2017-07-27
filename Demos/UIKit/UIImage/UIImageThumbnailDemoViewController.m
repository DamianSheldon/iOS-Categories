//
//  UIImageThumbnailDemoViewController.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 27/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <DMLWidget/DMLCollectionViewCell.h>

#import "UIImage+JKThumbnail.h"

#import "UIImageThumbnailDemoViewController.h"

@interface UIImageThumbnailDemoViewController ()<UICollectionViewDelegateFlowLayout>

@end

@implementation UIImageThumbnailDemoViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Thumbnail Demo";
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    // Register cell classes
    [self.collectionView registerClass:[DMLCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DMLCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    UIImage *originImage = [UIImage imageNamed:@"F"];
    
    CGSize size = [self collectionView:collectionView layout:collectionView.collectionViewLayout sizeForItemAtIndexPath:indexPath];

    UIImage *resultImage = [originImage jk_thumbnailWithSize:size];
    
    cell.imageView.image = resultImage;
    
    return cell;
}

#pragma mark <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            return CGSizeMake(60, 100);
        
        case 1:
            return CGSizeMake(40, 40);
            
        case 2:
            return CGSizeMake(10, 10);
            
        default:
            return CGSizeMake(60, 100);
    }
}

@end
