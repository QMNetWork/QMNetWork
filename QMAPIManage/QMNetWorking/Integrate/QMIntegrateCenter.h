//
//  QMIntegrateCenter.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//  完整的Request诞生需要借助该类的完成

#import <Foundation/Foundation.h>
@interface QMIntegrateCenter : NSObject

+ (instancetype)sharedManager;
/**
 *  请求Head
 */
@property (nonatomic, copy) Class httpHead;
/**
 *  请求的方式
 */
@property (nonatomic, copy) Class requestGenerator;
/**
 *  请求的配置
 */
@property (nonatomic, copy) Class requestConfiguration;
@end
