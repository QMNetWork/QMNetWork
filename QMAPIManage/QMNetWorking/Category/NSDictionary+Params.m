//
//  NSDictionary+Params.m
//  APIManager
//
//  Created by Apricot on 16/6/12.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "NSDictionary+Params.h"

@implementation NSDictionary (Params)
- (NSArray *)transformedUrlParams{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if (![obj isKindOfClass:[NSString class]]) {
            obj = [NSString stringWithFormat:@"%@", obj];
        }
        if ([obj length] > 0) {
            [result addObject:[NSString stringWithFormat:@"%@=%@", key, obj]];
        }
    }];
    NSArray *sortedResult = [result sortedArrayUsingSelector:@selector(compare:)];
    return sortedResult;
}
@end
