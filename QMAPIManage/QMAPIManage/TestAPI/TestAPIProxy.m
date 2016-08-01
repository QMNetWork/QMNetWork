//
//  TestAPIProxy.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "TestAPIProxy.h"
#import "TestHTTPHead.h"
@implementation TestAPIProxy
- (Class)HTTPHead{
    return [TestHTTPHead class];
}
@end
