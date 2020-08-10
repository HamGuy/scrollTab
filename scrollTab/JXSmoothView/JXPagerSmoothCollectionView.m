//
//  JXPagerSmoothCollectionView.m
//  scrollTab
//
//  Created by HamGuy on 2020/8/10.
//  Copyright © 2020 apple. All rights reserved.
//

#import "JXPagerSmoothCollectionView.h"

@implementation JXPagerSmoothCollectionView
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    CGPoint point = [touch locationInView:self.pagerHeaderContainerView];
    if (CGRectContainsPoint(self.pagerHeaderContainerView.bounds, point)) {
        return NO;
    }
    return YES;
}

@end
