//
//  QMService.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QMService : NSObject

+ (instancetype)instantiation;

@property (nonatomic, readonly, copy) NSString *baseURL;

@end
