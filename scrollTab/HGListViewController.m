//
//  HGListViewController.m
//  scrollTab
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 apple. All rights reserved.
//

#import "HGListViewController.h"
#import "JXPagerSmoothView.h"
#import "JXPagerSmoothCollectionView.h"
#import "UIColor+Random.h"

static NSString* const kTestCellIdentifier = @"kTestCellIdentifier";



@interface HGListViewController ()<UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation HGListViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
//        JXPagerSmoothCollectionFlowLayout *layout = [[JXPagerSmoothCollectionFlowLayout alloc] init];
//        layout.pinCategoryHeight = 50;
//        layout.itemSize = CGSizeMake(SCREEN_WIDTH, 48);
//        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
//        _collectionView.dataSource = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.collectionView];
    
    
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kTestCellIdentifier];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}


- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.collectionView.frame = self.view.bounds;
}

#pragma mark - UICollectionVeiwDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kTestCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = UIColor.random;
    return cell;
}


#pragma mark - JXPagerSmoothViewListViewDelegate

- (UIScrollView *)listScrollView {
    return self.collectionView;
}

- (UIView *)listView {
    return self.view;
}


#pragma mark - Getter & Setter

-(UICollectionView *)collectionView {
    if(!_collectionView){
        JXPagerSmoothCollectionFlowLayout *layout = [[JXPagerSmoothCollectionFlowLayout alloc] init];
        layout.pinCategoryHeight = 50;
        layout.itemSize = CGSizeMake(SCREEN_WIDTH, 48);
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
        _collectionView.dataSource = self;
    }
    return _collectionView;
}

@end
