//
//  QMAPIProxy.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QMHTTPHead.h"
#import "QMRequestGenerator.h"
#import "QMRequestConfiguration.h"

@interface QMAPIProxy : NSObject

+ (instancetype)instantiation;

/**
 *  配置HTTPHead 请求head头
 *
 *  @return <#return value description#>
 */
- (Class)HTTPHead;

/**
 *  配置请求的方式（POST GET等等）
 *
 *  @return <#return value description#>
 */
- (Class)requestGenerator;

/**
 *  默认的配置要求
 *
 *  @return <#return value description#>
 */
- (Class)requestConfiguration;

@end
