//
//  MFFloatVideo.h
//  iMFAD
//
//  Created by CF-NB on 2019/6/17.
//  Copyright © 2019年 Charles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@protocol MFFloatVideoDelegate <NSObject>
@optional
/**廣告請求成功*/
- (void)onSuccessToAdFloatVideo;

/**廣告請求失敗*/
- (void)onFailToAdFloatVideo;

/**廣告點擊*/
- (void)onClickToAdFloatVideo;

/**廣告關閉*/
- (void)onCloseToAdFloatVideo;

/**廣告動畫結束*/
- (void)onFloatVideoEnd;

@end

@interface MFFloatVideo : UIView
@property(nonatomic, strong) AVPlayer *contentPlayer;
@property (nonatomic, copy) NSString *bannerId;
@property(nonatomic, assign)UIViewController *rootViewController;
@property(nonatomic, assign)id<MFFloatVideoDelegate>delegate;

#pragma mark 回傳SDK版本
+ (NSString *)version;

#pragma mark 開始取得廣告
- (void)requestAd;

#pragma mark 顯示取得廣告
- (void)show;

#pragma mark 設定是否輸出除錯訊息
- (void)debugInfo:(BOOL)state;

@end
