//
//  TTOldService.m
//  TianTianWang
//
//  Created by yitailong on 16/7/8.
//  Copyright © 2016年 oyxc. All rights reserved.
//

#import "TTOldService.h"
#import "TTHTTPClient.h"
#import "TTAPIBaseModel.h"

static NSString *const TTOldServiceErrorDomain = @"TTOldServiceErrorDomain";


@interface TTOldService ()

@property (nonatomic, strong) NSMutableDictionary<NSNumber*, NSURLSessionDataTask*> *tasks;

@end

@implementation TTOldService

- (NSNumber *)PostWithParams:(NSDictionary *)params  methodName:(NSString * )methodName success:(void(^)(NSDictionary *response))success failure:(void (^)(NSError *error))failure
{

    NSURLSessionDataTask *dataTask = [[TTHTTPClient shareClient] PostWithParams:params methodName:methodName success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
       
        if ([responseObject isKindOfClass:[NSDictionary class]]) {
            TTAPIBaseModel *baseModel = [[TTAPIBaseModel alloc] initWithDictionary:responseObject error:nil];
            if (baseModel.Header.code.integerValue == TTNetWorkStateOK) {
                success(responseObject);
            }
            else{
                NSDictionary *userInfo = @{NSLocalizedDescriptionKey: baseModel.Header.message};
                NSError *error = [NSError errorWithDomain:TTOldServiceErrorDomain code:baseModel.Header.code.integerValue userInfo:userInfo];
                failure(error);
            }
        }
       
       [self.tasks removeObjectForKey:@(task.taskIdentifier)];
       
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
        failure(error);
        [self.tasks removeObjectForKey:@(task.taskIdentifier)];
    }];
    
    if (dataTask) {
        [self.tasks setObject:dataTask forKey:@(dataTask.taskIdentifier)];
    }
    
    return @(dataTask.taskIdentifier);
}

- (RACSignal *)rac_PostWithParams:(NSDictionary *)params  methodName:(NSString * )methodName
{
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
       NSURLSessionDataTask *dataTask = [[TTHTTPClient shareClient] PostWithParams:params methodName:methodName success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
           
           if ([responseObject isKindOfClass:[NSDictionary class]]) {
               TTAPIBaseModel *baseModel = [[TTAPIBaseModel alloc] initWithDictionary:responseObject error:nil];
               if (baseModel.Header.code.integerValue == TTNetWorkStateOK) {
                   [subscriber sendNext:responseObject];
                   [subscriber sendCompleted];
               }
               else{
                   NSDictionary *userInfo = @{NSLocalizedDescriptionKey: baseModel.Header.message};
                   NSError *error = [NSError errorWithDomain:TTOldServiceErrorDomain code:baseModel.Header.code.integerValue userInfo:userInfo];
                   [subscriber sendError:error];
               }
           }

           
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
           [subscriber sendError:error];
       }];
        
        return [RACDisposable disposableWithBlock:^{
            [dataTask cancel];
        }];
    }];
}


- (void)cancelAllTasks
{
    for (NSURLSessionDataTask *task in self.tasks) {
        [task cancel];
        [self.tasks removeObjectForKey:@(task.taskIdentifier)];
    }
}

#pragma mark -- Setter && Getter
- (NSMutableDictionary *)tasks
{
    if (!_tasks) {
        _tasks = [@{} mutableCopy];
    }
    return _tasks;
}

@end
