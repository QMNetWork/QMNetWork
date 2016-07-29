//
//  QMRequestGenerator.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QMIntegrateCenter.h"
#import "QMService.h"
#import "QMRequestConfiguration.h"
#import "QMHTTPHead.h"

@interface QMRequestGenerator : NSObject

+ (instancetype)instantiation;

- (NSURLRequest *)requestWithAPI:(NSString *)api withParams:(NSDictionary *)params;

- (NSString *)HTTPMethod;

- (NSTimeInterval)timeoutInterval;

/**
 *  配置请求参数
 *
 *  @param request request请求
 *  @param params  请求参数
 *
 *  @return 添加了参数的Request
 */
- (NSMutableURLRequest *)HTTPBodyWithRequest:(NSMutableURLRequest *)request withParams:(NSDictionary *)params;
@end
