//
//  QMHTTPHead.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "QMHTTPHead.h"

@implementation QMHTTPHead


+ (instancetype)instantiation{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.httpHead = [NSMutableDictionary dictionary];
    }
    return self;
}
@end
