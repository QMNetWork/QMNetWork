//
//  QMRequestConfiguration.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QMRequestConfiguration : NSObject

+ (instancetype)instantiation;

/**
 *  超时时间
 */
@property (nonatomic, readonly, assign) NSTimeInterval netWokingTimeoutSeconds;

/**
 *  缓存时效
 */
@property (nonatomic, readonly, assign) NSTimeInterval cacheOutdateTimeSeconds;

/**
 *  缓存的最大数量
 */
@property (nonatomic, readonly, assign) NSUInteger cacheCountLimit;

@end
