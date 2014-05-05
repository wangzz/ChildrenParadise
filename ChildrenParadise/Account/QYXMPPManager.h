//
//  QYXMPPManager.h
//  ChildrenParadise
//
//  Created by wangzz on 14-5-3.
//  Copyright (c) 2014年 QINGYUN-INC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYXMPPManager : NSObject

+(QYXMPPManager *)sharedInstance;

- (BOOL)connectWithJID:(NSString*) myJID password:(NSString*)myPassword;

@end
