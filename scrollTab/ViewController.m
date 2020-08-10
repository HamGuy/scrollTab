//
//  ViewController.m
//  scrollTab
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 apple. All rights reserved.
//

#import "ViewController.h"
#import "JXPagerSmoothView.h"
#import "HGListViewController.h"


@interface ViewController ()<JXPagerSmoothViewDataSource>

@property (nonatomic, strong) JXPagerSmoothView *pager;
@property (nonatomic, strong) UIView *pageHader;
@property (nonatomic, strong) UILabel *pinHeader;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.pager];
    self.navigationController.navigationBar.translucent = YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.pager.bounds = self.view.bounds;
}

#pragma mark - JXPagerSmoothViewDataSource
- (UIView *)viewForPagerHeaderInPagerView:(JXPagerSmoothView *)pagerView {
    return self.pageHader;
}

- (CGFloat)heightForPagerHeaderInPagerView:(JXPagerSmoothView *)pagerView {
    return self.pageHader.bounds.size.height;
}

- (UIView *)viewForPinHeaderInPagerView:(JXPagerSmoothView *)pagerView {
    return self.pinHeader;
}

- (CGFloat)heightForPinHeaderInPagerView:(JXPagerSmoothView *)pagerView {
    return self.pinHeader.bounds.size.height;
}

- (NSInteger)numberOfListsInPagerView:(JXPagerSmoothView *)pagerView {
    return 3;
}

-(id<JXPagerSmoothViewListViewDelegate>)pagerView:(JXPagerSmoothView *)pagerView initListAtIndex:(NSInteger)index {
    HGListViewController *vc = [[HGListViewController alloc] init];
    return vc;
}


#pragma mark - Getter & Setter

-(JXPagerSmoothView *)pager {
    if(!_pager){
        _pager = [[JXPagerSmoothView alloc] initWithDataSource:self];
        _pager.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }
    return _pager;
}

-(UIView *)pageHader {
    if(!_pageHader){
        _pageHader = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 300)];
        _pageHader.backgroundColor = UIColor.redColor;
    }
    return _pageHader;
}


-(UILabel *)pinHeader {
    if(!_pinHeader){
        _pinHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 30)];
        _pinHeader.text = @"PIN Header";
        _pinHeader.backgroundColor = UIColor.blueColor;
    }
    return _pinHeader;
}

@end
