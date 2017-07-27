//
//  UIImageDemoViewController.m
//  JKCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 15/3/29.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import "UIImageDemoViewController.h"
#import "UIImageRotateDemoViewController.h"
#import "UIImageScaleDemoViewController.h"
#import "UIImageResizeDemoViewController.h"
#import "UIImageThumbnailDemoViewController.h"
#import "UIImageCropDemoViewController.h"

static NSString *const sCellIdentifier = @"cell";

@interface UIImageDemoViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) UITableView *tableView;
@property (nonatomic) NSArray *supportedOperations;

@end

@implementation UIImageDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    [self configureConstraintsForTableView];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return (NSInteger)self.supportedOperations.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:sCellIdentifier forIndexPath:indexPath];
    
    NSString *operationName = self.supportedOperations[indexPath.row];
    cell.textLabel.text = operationName;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *targetController;
    
    switch (indexPath.row) {
        case 0: {
            UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
            
            flowLayout.sectionInset = UIEdgeInsetsMake(10, 0, 0, 0);
            
            int itemPerRow = 4;
            CGFloat layoutWidth = CGRectGetWidth(tableView.frame) - (itemPerRow - 1) * flowLayout.minimumInteritemSpacing;
            
            CGFloat width = ceil(layoutWidth / itemPerRow);
            CGFloat height = ceil(width / 0.618);// Golden ratio
            
            flowLayout.itemSize = CGSizeMake(width, height);
            
            targetController = [[UIImageRotateDemoViewController alloc] initWithCollectionViewLayout:flowLayout];
            break;
        }
            
        case 1: {
            UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];

            targetController = [[UIImageScaleDemoViewController alloc] initWithCollectionViewLayout:flowLayout];
            break;
        }
            
        case 2: {
            UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];

            targetController = [[UIImageResizeDemoViewController alloc] initWithCollectionViewLayout:flowLayout];
            break;
        }
        
        case 3: {
            UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
            
            targetController = [[UIImageThumbnailDemoViewController alloc] initWithCollectionViewLayout:flowLayout];
            break;
        }
            
        case 4: {
            UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
            
            targetController = [[UIImageCropDemoViewController alloc] initWithCollectionViewLayout:flowLayout];
            break;
        }
            
        default:
            break;
    }
    
    if (targetController) {
        [self.navigationController pushViewController:targetController animated:YES];
    }
}

#pragma mark - Private Method

- (void)configureConstraintsForTableView
{
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.topLayoutGuide attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.bottomLayoutGuide attribute:NSLayoutAttributeTop multiplier:1.0 constant:0]];
}

#pragma mark - Getter

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.translatesAutoresizingMaskIntoConstraints = NO;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:sCellIdentifier];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (NSArray *)supportedOperations
{
    if (!_supportedOperations) {
        _supportedOperations = @[
                                 @"Rotate",
                                 @"Scale",
                                 @"Resize",
                                 @"Thumbnail",
                                 @"Crop"
                                 ];
    }
    return _supportedOperations;
}

@end
