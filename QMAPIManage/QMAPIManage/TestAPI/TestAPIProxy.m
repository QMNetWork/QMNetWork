//
//  TestAPIProxy.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "TestAPIProxy.h"
#import "TestHTTPHead.h"
#import "QMAPIManager.h"
@implementation TestAPIProxy
- (Class)HTTPHead{
    return [TestHTTPHead class];
}

- (void)caipiao{
    [[QMAPIManager sharedManager] sendAPI:@"acman/shuzicai/pl5" withParams:nil withAPIProxy:self];
}

@end
