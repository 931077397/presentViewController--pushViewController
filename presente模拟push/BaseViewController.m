//
//  BaseViewController.m
//  presente模拟push
//
//  Created by yye on 16/8/31.
//  Copyright © 2016年 qq931077397. All rights reserved.
//
#import "YYEAnimatorPush.h"
#import "BaseViewController.h"

@interface BaseViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -实现下面两个代理

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    YYEAnimatorPush *animator = [YYEAnimatorPush new];
    animator.isPresenting = YES;
    return animator;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    
    YYEAnimatorPush *animator = [YYEAnimatorPush new];
    return animator;
}

@end
