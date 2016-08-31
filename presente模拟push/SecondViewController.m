//
//  SecondViewController.m
//  presente模拟push
//
//  Created by yye on 16/8/31.
//  Copyright © 2016年 qq931077397. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)backRoot:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}


@end
