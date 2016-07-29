//
//  TestHTTPHead.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "TestHTTPHead.h"

@implementation TestHTTPHead
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.httpHead = [NSMutableDictionary dictionary];
        [self.httpHead setObject:@"824425a1df7a770eca84f502a6c13aa4" forKey:@"apikey"];
    }
    return self;
}
@end
