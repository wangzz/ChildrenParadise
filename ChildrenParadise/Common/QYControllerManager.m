//
//  QYControllerManager.m
//  ChildrenParadise
//
//  Created by wangzz on 14-5-4.
//  Copyright (c) 2014年 QINGYUN-INC. All rights reserved.
//

#import "QYControllerManager.h"
#import "QYLoginViewController.h"
#import "QYMainViewController.h"
#import "QYHelpViewController.h"


@implementation QYControllerManager

+ (void)presentQYController:(QYControllerType)controllerType
{
    UIViewController *controller = [[[self alloc] init] controllerByType:controllerType];
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    window.rootViewController = controller;
}

- (UIViewController *)controllerByType:(QYControllerType)type
{
    UIViewController *controller = nil;
    
    switch (type) {
        case QYControllerTypeHelp:
            controller = [self helpViewController];
            break;
        case QYControllerTypeLogin:
            controller = [self loginViewController];
            break;
        case QYControllerTypeMain:
            controller = [self mainViewController];
            break;
            
        default:
            break;
    }
    
    return controller;
}

- (QYLoginViewController *)loginViewController
{
    QYLoginViewController *login = [[QYLoginViewController alloc] init];
    return login;
}

- (QYHelpViewController *)helpViewController
{
    QYHelpViewController *help = [[QYHelpViewController alloc] init];
    return help;
}

- (UITabBarController *)mainViewController
{
    UITabBarController *main = [[QYMainViewController alloc] init];
    return main;
}


@end
