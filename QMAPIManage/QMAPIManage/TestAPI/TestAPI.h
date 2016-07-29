//
//  TestAPI.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QMAPIProxy.h"
typedef void (^Success) (NSObject * object);
typedef void (^Failure) (NSError *  error);

@interface TestAPI : NSObject
+ (void)apiName:(NSString *)api withParams:(NSDictionary *)params;
+ (void)apiName:(NSString *)api withParams:(NSDictionary *)params withAPIProxy:(Class )apiProxyClass;
@end
