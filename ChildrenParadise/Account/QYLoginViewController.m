//
//  QYLoginViewController.m
//  ChildrenParadise
//
//  Created by wangzz on 14-5-3.
//  Copyright (c) 2014年 QINGYUN-INC. All rights reserved.
//

#import "QYLoginViewController.h"
#import "QYXMPPManager.h"
#import "QYControllerManager.h"


@interface QYLoginViewController ()
{
    UITextField     *_userNameTextField;
    UITextField     *_passwordTextField;
}

@end


@implementation QYLoginViewController

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

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setup];
}

- (void)setup
{
    _userNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 220, 30)];
    _userNameTextField.backgroundColor = [UIColor greenColor];
    _userNameTextField.placeholder = @"用户名";
    [self.view addSubview:_userNameTextField];
    
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 160, 220, 30)];
    _passwordTextField.backgroundColor = [UIColor greenColor];
    _passwordTextField.placeholder = @"密码";
    [self.view addSubview:_passwordTextField];
    
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 250, 120, 40)];
    loginButton.backgroundColor = [UIColor redColor];
    [loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(onLoginButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    UITapGestureRecognizer* tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapGestureAction:)];
    tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapRecognizer];
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

- (void)onLoginButtonAction:(UIButton *)button
{
    QYXMPPManager *xmpp = [QYXMPPManager sharedInstance];
    [xmpp connectWithJID:@"qingyun@127.0.0.1" password:@"wzz"];
    
    [QYControllerManager presentQYController:QYControllerTypeMain];
}

- (void)onTapGestureAction:(UITapGestureRecognizer *)tapGesture
{
    [self hideKeyBoard];
}

- (void)hideKeyBoard
{
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
}


@end
