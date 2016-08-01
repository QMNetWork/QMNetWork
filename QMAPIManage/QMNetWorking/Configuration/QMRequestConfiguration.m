//
//  QMRequestConfiguration.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "QMRequestConfiguration.h"

@implementation QMRequestConfiguration


+ (instancetype)instantiation{
    return [[self alloc] init];
}

- (NSString *)serverURL{
//    return @"http://api.xiaxiangke.com/api";
    return @"http://apis.baidu.com/";
}

- (NSTimeInterval)netWokingTimeoutSeconds{
    return 20.0f;
}

- (NSTimeInterval)cacheOutdateTimeSeconds{
    return 300;
}

- (NSUInteger)cacheCountLimit{
    return 1000;
}

@end
