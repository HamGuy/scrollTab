//
//  HGListViewController.h
//  scrollTab
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JXPagerSmoothView.h"

NS_ASSUME_NONNULL_BEGIN

@interface HGListViewController : UIViewController<JXPagerSmoothViewListViewDelegate>

@property (nonatomic, assign) NSInteger type;

@end

NS_ASSUME_NONNULL_END
