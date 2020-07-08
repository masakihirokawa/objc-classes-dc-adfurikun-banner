//
//  ViewController.m
//  DCAdfurikunBannerSample
//
//  Created by Dolice on 2020/07/08.
//  Copyright © 2020 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // アドフリくんバナー表示
    [[DCAdfurikunBanner sharedManager] showAdBanner:self yPos:0.0];
}

#pragma mark - Banner Ads

// 広告の削除
- (void)removeBannerAds
{
    [[DCAdfurikunBanner sharedManager] removeAdBanner];
}

// 広告の非表示
- (void)hideBannerAds:(BOOL)hide
{
    [[DCAdfurikunBanner sharedManager] hideAdBanner:hide];
}

// 広告を最前面に配置
- (void)insertBannerAds
{
    [[DCAdfurikunBanner sharedManager] insertAdBanner];
}

// 広告のリロード
- (void)reloadBannedAds
{
    [[DCAdfurikunBanner sharedManager] reloadAdBanner];
}

@end
