
//  NSURLSession+Session.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "NSURLSession+Session.h"
#import "QMRequestGenerator.h"
#import "QMIntegrateCenter.h"
static NSURLSession *session = nil;
static NSURLSessionConfiguration *configuration = nil;

@implementation NSURLSession (Session)
+ (NSURLSessionDataTask *)dataTaskWithApi:(NSString *)api withParams:(NSDictionary *)params completionHandler:(void(^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler{
    
    if(!session){
        if(!configuration){
            configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        }
        session = [NSURLSession sessionWithConfiguration:configuration];
    }
    
    NSURLRequest *request = nil;
    QMRequestGenerator *requestGenerator = [[QMIntegrateCenter sharedManager].requestGenerator instantiation];
    request = [requestGenerator requestWithAPI:api withParams:params];
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"失败");
        }else{
            NSLog(@"成功");
        }
        completionHandler(data,response,error);
    }];
    return task;
}
@end
