//
//  ZHHelper.m
//  ZHTestSDK
//
//  Created by 郑章海 on 2020/5/25.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ZHHelper.h"

@interface ZHHelper()

/// 资源bundle
@property (nonatomic, strong) NSBundle *resourceBundle;

@end

@implementation ZHHelper

/// 单例
+ (instancetype)shared {
    static ZHHelper *_helper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _helper = [[ZHHelper alloc] init];
    });
    return _helper;
}

/// 通过资源名获取资源路径
/// @param name 资源名称
/// @param type 资源类型
- (NSString *)resourcePathWithName:(NSString *)name ofType:(NSString *)type {
    return [self.resourceBundle pathForResource:name ofType:type];
}

#pragma mark - setter / getter

- (NSBundle *)resourceBundle {
    if (!_resourceBundle) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"ZHTestSDKResource" ofType:@"bundle"];
        _resourceBundle = [NSBundle bundleWithPath:bundlePath];
    }
    return _resourceBundle;
}

@end
