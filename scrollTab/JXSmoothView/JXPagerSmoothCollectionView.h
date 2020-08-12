//
//  JXPagerSmoothCollectionView.h
//  scrollTab
//
//  Created by HamGuy on 2020/8/10.
//  Copyright © 2020 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JXPagerSmoothCollectionView : UICollectionView <UIGestureRecognizerDelegate>
@property (nonatomic, strong) UIView *pagerHeaderContainerView;
@end

@interface JXPagerSmoothCollectionFlowLayout : UICollectionViewFlowLayout
@property (nonatomic, assign) CGFloat pinCategoryHeight;    //悬浮header的高度
@end



NS_ASSUME_NONNULL_END
