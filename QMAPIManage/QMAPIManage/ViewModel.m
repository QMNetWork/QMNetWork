//
//  ViewModel.m
//  QMAPIManage
//
//  Created by Apricot on 16/8/1.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "ViewModel.h"
#import "TestAPI.h"
#import "TestAPIProxy.h"

@interface ViewModel ()
@property (nonatomic, strong) TestAPIProxy * apiProxy;
@end

@implementation ViewModel
- (void)api{
//    [TestAPI apiName:@"tngou/info/news" withParams:@{@"id":@(0)} withAPIProxy:[TestAPIProxy class]];
    self.apiProxy = [TestAPIProxy instantiation];
    [self.apiProxy caipiao];
}
@end
