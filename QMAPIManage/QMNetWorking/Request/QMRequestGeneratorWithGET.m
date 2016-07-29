//
//  QMRequestGeneratorWithGET.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "QMRequestGeneratorWithGET.h"
#import "NSDictionary+Params.h"
#import "NSArray+Params.h"

@implementation QMRequestGeneratorWithGET

- (NSString *)HTTPMethod{
    return @"GET";
}
- (NSMutableURLRequest *)HTTPBodyWithRequest:(NSMutableURLRequest *)request withParams:(NSDictionary *)params{
    NSString * paramsStr = [[params transformedUrlParams] paramsString];
    request.URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@?%@",request.URL.absoluteString,paramsStr]];
    return request;
}
@end
