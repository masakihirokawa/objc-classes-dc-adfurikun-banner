# DCAdfurikunBanner

iPhoneアプリに[アドフリくん](https://adfurikun.jp/ "アドフリくん")のモバイルバナー（Ver. 2）を表示する「[DCAdfurikunBanner](https://github.com/masakihirokawa/objc-classes-dc-adfurikun-banner "DCAdfurikunBanner")」クラスです。

[公式マニュアル](https://github.com/glossom-dev/AdfurikunSDK-iOS/wiki "公式マニュアル")を参考にさせていただき、10秒毎にバナーがリフレッシュされるよう実装しております。ご使用の際は広告枠IDを指定してください。

## 導入準備

### 1. 広告枠IDの保持

```objective-c
NSString *const ADFURIKUN_AD_UNIT_ID = @"広告枠ID";
```

### 2. アプリ起動時に初期化

#### AppDelegate.h

```objective-c
#import <ADFMovieReward/ADFmyBanner.h>
```

#### AppDelegate.m

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // アドフリくんバナー初期化
    if ([ADFmyNativeAd isSupportedOSVersion]) {
        [ADFmyNativeAd initializeWithAppID:ADFURIKUN_AD_UNIT_ID];
    }
    
    return YES;
}
```

### e.x. Info.plistの編集

[AdMob](https://admob.google.com/intl/ja/home/ "AdMob")を使用する場合は *Info.plist*に *GADApplicationIdentifier*の設定値を追加してください。

## クラスの使用方法

### 1. バナーの表示

```objective-c
[[DCAdfurikunBanner sharedManager] showAdBanner:self yPos:0.0];
```

### 2. バナーの削除

```objective-c
[[DCAdfurikunBanner sharedManager] removeAdBanner];
```

### 3. バナーの非表示

```objective-c
[[DCAdfurikunBanner sharedManager] hideAdBanner:YES];
```

### 4. バナーを最前面に配置

```objective-c
[[DCAdfurikunBanner sharedManager] insertAdBanner];
```

### 5. バナーの再読み込み

```objective-c
[[DCAdfurikunBanner sharedManager] reloadAdBanner];
```