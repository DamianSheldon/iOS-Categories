//
//  UIImageResizeDemoViewController.m
//  JKCategories-Demo
//
//  Created by Meiliang Dong on 27/07/2017.
//  Copyright © 2017 www.skyfox.org. All rights reserved.
//

#import <DMLWidget/DMLCollectionViewCell.h>
#import <DMLWidget/DMLCollectionHeaderView.h>

#import "UIImage+JKResize.h"

#import "UIImageResizeDemoViewController.h"

@interface UIImageResizeDemoViewController ()<UICollectionViewDelegateFlowLayout>

@property (nonatomic) NSArray *resizeKinds;

@end

@implementation UIImageResizeDemoViewController

static NSString * const sReuseCellIdentifier = @"Cell";
static NSString * const sReuseSectionHeaderIdentifier = @"Header";
static NSUInteger const sResizeCount = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Resize Demo";
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    // Register cell classes
    [self.collectionView registerClass:[DMLCollectionViewCell class] forCellWithReuseIdentifier:sReuseCellIdentifier];
    [self.collectionView registerClass:[DMLCollectionHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:sReuseSectionHeaderIdentifier];
    
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.resizeKinds.count;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return sResizeCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DMLCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:sReuseCellIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    UIImage *originImage = [UIImage imageNamed:@"F"];
    UIImage *resultImage;
    
    CGSize size = [self collectionView:collectionView layout:collectionView.collectionViewLayout sizeForItemAtIndexPath:indexPath];
    
    if (indexPath.section > 0) {
        switch (indexPath.row) {
            case 0:
                resultImage = originImage;
                break;
                
            case 1:
                resultImage = [originImage jk_resizedImageWithContentMode:UIViewContentModeScaleAspectFit size:size];
                break;
                
            case 2:
                resultImage = [originImage jk_resizedImageWithContentMode:UIViewContentModeScaleAspectFill size:size];
                break;
                
            default:
                break;
        }
    }
    else {
        resultImage = [originImage jk_resizedImageOfSize:size];
    }
    
    cell.imageView.contentMode = UIViewContentModeLeft;
    cell.imageView.image = resultImage;
    
    cell.textLabel.font = [UIFont systemFontOfSize:12.0];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", NSStringFromCGSize(resultImage.size)];
    
    // Show border
    cell.imageView.layer.borderWidth = 1.0;
    cell.imageView.layer.borderColor = [UIColor redColor].CGColor;
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    DMLCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:sReuseSectionHeaderIdentifier forIndexPath:indexPath];
    
    NSString *resizeKind = self.resizeKinds[indexPath.section];
    
    headerView.textLabel.text = resizeKind;
    
    return headerView;
}

#pragma mark <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIImage *originImage = [UIImage imageNamed:@"F"];

    switch (indexPath.row) {
        case 0:
            return originImage.size;
        case 1: {
            // Wide image
            return CGSizeMake(originImage.size.width + originImage.size.height, originImage.size.height);
        }
            
        case 2: {
            // Tall image
            return CGSizeMake(originImage.size.width, originImage.size.width + originImage.size.height);
        }
            
        default:
            return originImage.size;
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    CGSize size = CGSizeMake(CGRectGetWidth(collectionView.frame), 28);
    
    return size;
}

#pragma mark - Getter

- (NSArray *)resizeKinds
{
    if (!_resizeKinds) {
        _resizeKinds = @[
                         @"Direct Resize",
                         @"Resize With Content Mode"
                         ];
    }
    return _resizeKinds;
}

@end
