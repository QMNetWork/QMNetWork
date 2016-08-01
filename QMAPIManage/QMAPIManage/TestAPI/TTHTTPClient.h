//
//  TTHTTPClient.h
//  TianTianWang
//
//  Created by yitailong on 16/7/6.
//  Copyright © 2016年 oyxc. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface TTHTTPClient : AFHTTPSessionManager

+ (nonnull instancetype)shareClient;

- (nullable NSURLSessionDataTask *)PostWithParams:(nullable NSDictionary *)params  methodName:(nullable  NSString * )methodName success:(nullable void (^)(NSURLSessionDataTask * _Nullable task, id _Nullable responseObject))success failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error))failure;

@end
