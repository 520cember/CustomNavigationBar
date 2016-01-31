//
//  SecondViewController.m
//  1.SimpleNavigationDemo
//
//  Created by 周泉 on 13-2-2.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor orangeColor];
    self.view = baseView;
    [baseView release];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"isHidden" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(90, 150, 140, 40)];
    [button addTarget:self action:@selector(hiddenOrShow) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [back setTitle:@"back" forState:UIControlStateNormal];
    [back setFrame:CGRectMake(90, 200, 140, 40)];
    [back addTarget:self action:@selector(backRootVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
    
//    NSLog(@"second Nav : %p", self.navigationController);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // 默认是隐藏的
    [self.navigationController setToolbarHidden:NO animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Target Action
- (void)hiddenOrShow
{
    if (self.navigationController.toolbarHidden) {
        // 显示ToolBar和NavigationBar
        [self.navigationController setToolbarHidden:NO animated:YES];
        [self.navigationController setNavigationBarHidden:NO animated:YES];
    }else {
        [self.navigationController setToolbarHidden:YES animated:YES];
        [self.navigationController setNavigationBarHidden:YES animated:YES];
    }
}

- (void)backRootVC
{
    // 返回上一层视图控制器
    [self.navigationController popViewControllerAnimated:YES];
}

@end
