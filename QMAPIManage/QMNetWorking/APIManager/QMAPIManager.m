//
//  QMAPIManager.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "QMAPIManager.h"
#import "QMIntegrateCenter.h"
#import "NSURLSession+Session.h"

@interface QMAPIManager ()
/**
 *  存储所有的请求
 */
@property (nonatomic, strong) NSMutableDictionary *taskDict;
@end

@implementation QMAPIManager


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
        self.taskDict = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)sendAPI:(NSString *)api withParams:(NSDictionary *)params withAPIProxy:(QMAPIProxy *)apiProxy{
    //配置请求的环境
    [QMIntegrateCenter sharedManager].httpHead = [apiProxy HTTPHead];
    [QMIntegrateCenter sharedManager].requestGenerator = [apiProxy requestGenerator];
    [QMIntegrateCenter sharedManager].requestConfiguration = [apiProxy requestConfiguration];
    
    NSURLSessionDataTask *task = [NSURLSession dataTaskWithApi:api withParams:params completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
    }];
    [self.taskDict setObject:task forKey:@(task.taskIdentifier)];
    [task resume];
}

@end
