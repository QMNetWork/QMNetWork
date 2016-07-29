//
//  QMAPIManager.h
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QMAPIProxy.h"
@interface QMAPIManager : NSObject

+ (instancetype)sharedManager;

- (void)sendAPI:(NSString *)api withParams:(NSDictionary *)params withAPIProxy:(QMAPIProxy *)apiProxy;
@end
