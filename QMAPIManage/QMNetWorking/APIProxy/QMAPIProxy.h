//
//  QMAPIProxy.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/29.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QMHTTPHead.h"
#import "QMService.h"
#import "QMRequestGenerator.h"
#import "QMRequestConfiguration.h"

@interface QMAPIProxy : NSObject

+ (instancetype)instantiation;

- (Class)HTTPHead;

- (Class)service;

- (Class)requestGenerator;

- (Class)requestConfiguration;

@end
