//
//  ThirdViewController.m
//  ZBLocalized
//
//  Created by NQ UEC on 2017/5/12.
//  Copyright © 2017年 Suzhibin. All rights reserved.
//

#import "ThirdViewController.h"
#import "ZBLocalized.h"
#import "LanguageViewController.h"
#import "TabBarController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 200,100)];
    label.text =ZBLocalized(@"setlanguage",nil);
    label.numberOfLines = [label.text length];
    label.font=[UIFont boldSystemFontOfSize:20];
    label.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:label];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    LanguageViewController *languageView=[[LanguageViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:languageView];
    TabBarController * rootView = (TabBarController *)[[UIApplication sharedApplication].delegate window].rootViewController;
    [rootView presentViewController:nav animated:YES completion:nil];
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
