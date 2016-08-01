//
//  QMAPIProxy.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "QMAPIProxy.h"

@implementation QMAPIProxy


+ (instancetype)instantiation{
    return [[self alloc] init];
}

- (Class)HTTPHead{
    return [QMHTTPHead class];
}

- (Class)requestGenerator{
    return [QMRequestGenerator class];
}

- (Class)requestConfiguration{
    return [QMRequestConfiguration class];
}
@end
