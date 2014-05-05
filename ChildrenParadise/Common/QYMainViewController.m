//
//  QYMainViewController.m
//  ChildrenParadise
//
//  Created by wangzz on 14-5-4.
//  Copyright (c) 2014年 QINGYUN-INC. All rights reserved.
//

#import "QYMainViewController.h"
#import "QYContactViewController.h"
#import "QYSettingViewController.h"
#import "QYTeacherViewController.h"
#import "QYParentsViewController.h"
#import "QYInteractionViewController.h"



@interface QYMainViewController ()

@property (nonatomic, strong) QYInteractionViewController *interactionController;
@property (nonatomic, strong) QYSettingViewController *settingController;
@property (nonatomic, strong) QYContactViewController *contactController;
@property (nonatomic, strong) QYTeacherViewController *teacherController;
@property (nonatomic, strong) QYParentsViewController *parentsController;

@end

@implementation QYMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    self.interactionController = nil;
    self.settingController = nil;
    self.contactController = nil;
    self.teacherController = nil;
    self.parentsController = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createTabbar];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom View
- (void)createTabbar
{
    
    self.interactionController = [[QYInteractionViewController alloc] init];
    
    UINavigationController *interactionNavi = [[UINavigationController alloc] initWithRootViewController:self.interactionController];
    interactionNavi.tabBarItem.title = @"互动";
    
    UINavigationController *officeNavi = [[UINavigationController alloc] init];
    if (1) {
        self.parentsController = [[QYParentsViewController alloc] init];
        officeNavi = [[UINavigationController alloc] initWithRootViewController:self.parentsController];
        officeNavi.tabBarItem.title = @"我的宝贝";
    } else {
        self.teacherController = [[QYTeacherViewController alloc] init];
        officeNavi = [[UINavigationController alloc] initWithRootViewController:self.teacherController];
        officeNavi.tabBarItem.title = @"协同办公";
    }
    
    self.contactController = [[QYContactViewController alloc] init];
    UINavigationController *contactNavi = [[UINavigationController alloc] initWithRootViewController:self.contactController];
    contactNavi.tabBarItem.title = @"通讯录";
    
    self.settingController = [[QYSettingViewController alloc] init];
    UINavigationController *settingNavi = [[UINavigationController alloc] initWithRootViewController:self.settingController];
    settingNavi.tabBarItem.title = @"设置";
    
    self.viewControllers = @[interactionNavi,officeNavi,contactNavi,settingNavi];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
