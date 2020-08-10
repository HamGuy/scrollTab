//
//  HGListViewController.m
//  scrollTab
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 apple. All rights reserved.
//

#import "HGListViewController.h"
#import "JXPagerSmoothView.h"
#import "UIColor+Random.h"

static NSString* const kTestCellIdentifier = @"kTestCellIdentifier";



@interface HGListViewController ()<UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation HGListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.collectionView];
    
    
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kTestCellIdentifier];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.collectionView.bounds = self.view.bounds;
}


#pragma mark - UICollectionVeiwDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kTestCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = UIColor.grayColor;
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
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.itemSize = CGSizeMake(SCREEN_WIDTH, 48);
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
        _collectionView.dataSource = self;
    }
    return _collectionView;
}

@end
