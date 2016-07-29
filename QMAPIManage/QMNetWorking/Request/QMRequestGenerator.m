//
//  QMRequestGenerator.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "QMRequestGenerator.h"
#import "QMRequestGeneratorWithGET.h"

@interface QMRequestGenerator ()
//@property (nonatomic, strong) NSMutableURLRequest *request;
@end

@implementation QMRequestGenerator

+ (instancetype)instantiation{
    return [[QMRequestGeneratorWithGET alloc] init];
}

- (NSURLRequest *)requestWithAPI:(NSString *)api withParams:(NSDictionary *)params{
  //通过一个配置的文件拿到URL 以及请求的方式
    NSURL *url = [NSURL URLWithString:[self urlWithApi:api]];
    NSParameterAssert(url);
    if(!url){
        return nil;
    }
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:[self timeoutInterval]];
    NSParameterAssert(request);
    if(!request){
        return nil;
    }
    request = [self HTTPHeadsWithRequest:request];
//    request = [self ]
    request = [self HTTPBodyWithRequest:request
                             withParams:params];
    return request;
}

- (NSString *)urlWithApi:(NSString *)api{
    QMService *service = [[QMIntegrateCenter sharedManager].service instantiation];
    return [service.baseURL stringByAppendingPathComponent:api];
}

- (NSString *)HTTPMethod{
    return @"GET";
}

- (NSMutableURLRequest *)HTTPHeadsWithRequest:(NSMutableURLRequest *)request{
    QMHTTPHead *httpHead = [[QMIntegrateCenter sharedManager].httpHead instantiation];
    if(httpHead.httpHead){
        for (NSString *key in httpHead.httpHead) {
            [request setValue:httpHead.httpHead[key] forHTTPHeaderField:key];
        }
    }
    return request;
}

- (NSMutableURLRequest *)HTTPBodyWithRequest:(NSMutableURLRequest *)request withParams:(NSDictionary *)params{
    return request;
}

- (NSTimeInterval)timeoutInterval{
    QMRequestConfiguration *requestConfiguration = [[QMIntegrateCenter sharedManager].requestConfiguration instantiation];
    return requestConfiguration.cacheOutdateTimeSeconds;
}

@end
