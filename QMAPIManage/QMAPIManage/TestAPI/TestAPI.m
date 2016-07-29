//
//  TestAPI.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "TestAPI.h"
#import "QMAPIManager.h"
@implementation TestAPI

+(void)apiName:(NSString *)api withParams:(NSDictionary *)params{
    [[QMAPIManager sharedManager] sendAPI:api withParams:params withAPIProxy:[QMAPIProxy instantiation]];
}

+(void)apiName:(NSString *)api withParams:(NSDictionary *)params withAPIProxy:(__unsafe_unretained Class)apiProxyClass{
    [[QMAPIManager sharedManager] sendAPI:api withParams:params withAPIProxy:[apiProxyClass instantiation]];
}
@end
