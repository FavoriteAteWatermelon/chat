//
//  TestViewController.m
//  chat
//
//  Created by s on 2020/7/22.
//  Copyright © 2020 s. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden =YES;
    UIView *mView = [UIView new];
    self.view.backgroundColor = [UIColor whiteColor];
    mView.backgroundColor = [UIColor greenColor];
    mView.frame = CGRectMake(0, 0, 133, 200);
    [self.view addSubview:mView];
    // Do any additional setup after loading the view.
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
