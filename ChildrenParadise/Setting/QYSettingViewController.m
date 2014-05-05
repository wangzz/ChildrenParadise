//
//  QYSettingViewController.m
//  ChildrenParadise
//
//  Created by wangzz on 14-5-3.
//  Copyright (c) 2014年 QINGYUN-INC. All rights reserved.
//

#import "QYSettingViewController.h"
#import "QYControllerManager.h"


@interface QYSettingViewController ()

@end

@implementation QYSettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"设置";
    
    UIButton *exitButton = [[UIButton alloc] initWithFrame:CGRectMake(100, CGRectGetMaxY(self.view.frame)-120, 120, 40)];
    exitButton.backgroundColor = [UIColor greenColor];
    [exitButton setTitle:@"退出" forState:UIControlStateNormal];
    [exitButton addTarget:self
                   action:@selector(onExitButtonAction:)
         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


- (void)onExitButtonAction:(UIButton *)button
{
    
    [QYControllerManager presentQYController:QYControllerTypeLogin];
}

@end
