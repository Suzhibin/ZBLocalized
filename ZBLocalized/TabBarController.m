//
//  TabBarController.m
//  ZBLocalized
//
//  Created by NQ UEC on 2017/5/12.
//  Copyright © 2017年 Suzhibin. All rights reserved.
//

#import "TabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ZBLocalized.h"
@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*
     "first"="first";
     "second"="second";
     "third"="third";
     */
    FirstViewController *first=[[FirstViewController alloc]init];
    [self setupChildViewController:first title:ZBLocalized(@"first",nil)];
    
    SecondViewController *second=[[SecondViewController alloc]init];
    [self setupChildViewController:second title:ZBLocalized(@"second",nil) ];
    
    ThirdViewController *third=[[ThirdViewController alloc]init];
    [self setupChildViewController:third title:ZBLocalized(@"third",nil) ];
    
}
- (void)setupChildViewController:(UIViewController *)vc title:(NSString *)title
{
    vc.title = title;
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:vc]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
