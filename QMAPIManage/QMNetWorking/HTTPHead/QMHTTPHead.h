//
//  QMHTTPHead.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QMHTTPHead : NSObject

+ (instancetype)instantiation;

/**
 *  请求头的地址
 */
@property (nonatomic, strong) NSMutableDictionary *httpHead;
@end
