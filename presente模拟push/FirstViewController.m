//
//  FirstViewController.m
//  presente模拟push
//
//  Created by yye on 16/8/31.
//  Copyright © 2016年 qq931077397. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLeftBarButtonItme];
}

-(void)setLeftBarButtonItme{
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"] style:UIBarButtonItemStylePlain target:self action:@selector(naviCancel:)];
}
-(void)naviCancel:( id)sender{
//    [self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)push:(id)sender {
    UIViewController *targetVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:targetVC animated:YES];
}

@end
