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


NS_ASSUME_NONNULL_END
