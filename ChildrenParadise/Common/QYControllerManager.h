//
//  QYControllerManager.h
//  ChildrenParadise
//
//  Created by wangzz on 14-5-4.
//  Copyright (c) 2014年 QINGYUN-INC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, QYControllerType) {
    QYControllerTypeHelp,
    QYControllerTypeLogin,
    QYControllerTypeMain
};

@interface QYControllerManager : NSObject

+ (void)presentQYController:(QYControllerType)controllerType;

@end
