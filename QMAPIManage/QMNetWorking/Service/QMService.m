//
//  QMService.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "QMService.h"

@implementation QMService

+ (instancetype)instantiation{
    return [[self alloc] init];
}

-(NSString *)baseURL{
    return @"http://api.xiaxiangke.com/api";
}

@end
