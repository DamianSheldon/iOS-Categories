//
//  UIImageRotateDemoViewController.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 25/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <DMLWidget/DMLCollectionViewCell.h>
#import <DMLWidget/DMLCollectionHeaderView.h>

#import "UIImage+JKRotate.h"

#import "UIImageRotateDemoViewController.h"

static NSString *const sCellIdentifier = @"RotateCell";
static NSString *const sHeaderIdentifier = @"Header";

@interface UIImageRotateDemoViewController ()<UICollectionViewDelegateFlowLayout>

@property (nonatomic) NSArray *kindsOfOrientation;
@property (nonatomic) NSArray *standardOrientations;

@end

@implementation UIImageRotateDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Rotate Demo";
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[DMLCollectionViewCell class] forCellWithReuseIdentifier:sCellIdentifier];
    [self.collectionView registerClass:[DMLCollectionHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:sHeaderIdentifier];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.kindsOfOrientation.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section > 0) {
        return 8;
    }
    else {
        return (NSInteger)self.standardOrientations.count;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DMLCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:sCellIdentifier forIndexPath:indexPath];
    
    cell.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    UIImage *originImage = [UIImage imageNamed:@"F"];

    if (indexPath.section > 0) {
        CGFloat degree = 45 * indexPath.row;
        
        UIImage *rotatedImage = [originImage jk_imageRotatedByDegrees:degree];
        
        cell.imageView.image = rotatedImage;
        cell.textLabel.text = @(degree).description;
    }
    else {
        
        NSNumber *numberOfOrientation = self.standardOrientations[indexPath.row];
        
        UIImage *image = [UIImage imageWithCGImage:originImage.CGImage scale:1.0 orientation:numberOfOrientation.unsignedIntegerValue];
        
        cell.imageView.image = image;
        cell.textLabel.text = numberOfOrientation.description;
    }
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    DMLCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:sHeaderIdentifier forIndexPath:indexPath];
    
    NSString *kindOfOrientation = self.kindsOfOrientation[indexPath.section];
    
    headerView.textLabel.text = kindOfOrientation;
    
    return headerView;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    CGSize size = CGSizeMake(CGRectGetWidth(collectionView.frame), 28);
    
    return size;
}

- (NSArray *)standardOrientations
{
    if (!_standardOrientations) {
        _standardOrientations = @[
                                  @(UIImageOrientationUp),
                                  @(UIImageOrientationDown),
                                  @(UIImageOrientationLeft),
                                  @(UIImageOrientationRight),
                                  @(UIImageOrientationUpMirrored),
                                  @(UIImageOrientationDownMirrored),
                                  @(UIImageOrientationLeftMirrored),
                                  @(UIImageOrientationRightMirrored)
                                  ];
    }
    return _standardOrientations;
}

- (NSArray *)kindsOfOrientation
{
    if (!_kindsOfOrientation) {
        _kindsOfOrientation = @[
                                @"Standard Orientation Rotate",
                                @"Any Angle Rotate"
                                ];
    }
    return _kindsOfOrientation;
}

@end
