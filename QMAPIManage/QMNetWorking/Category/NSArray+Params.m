//
//  NSArray+Params.m
//  APIManager
//
//  Created by Apricot on 16/6/12.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "NSArray+Params.h"

@implementation NSArray (Params)
- (NSString *)paramsString{
    NSMutableString *paramString = [[NSMutableString alloc] init];
    NSArray *sortedParams = [self sortedArrayUsingSelector:@selector(compare:)];
    [sortedParams enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([paramString length] == 0) {
            [paramString appendFormat:@"%@", obj];
        } else {
            [paramString appendFormat:@"&%@", obj];
        }
    }];
    return paramString;
}
@end
