//
//  QMIntegrateCenter.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "QMIntegrateCenter.h"
#import "QMHTTPHead.h"
#import "QMRequestGenerator.h"
#import "QMRequestConfiguration.h"

@implementation QMIntegrateCenter
+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static id _shared;
    dispatch_once(&onceToken, ^{
        _shared = [[[self class] alloc] init];
    });
    return _shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.httpHead = [QMHTTPHead class];
        self.requestGenerator = [QMRequestGenerator class];
        self.requestConfiguration = [QMRequestConfiguration class];
    }
    return self;
}
@end
