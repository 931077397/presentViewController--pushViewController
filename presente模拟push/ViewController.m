//
//  ViewController.m
//  presente模拟push
//
//  Created by yye on 16/8/31.
//  Copyright © 2016年 qq931077397. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pushVC:(id)sender {
    UIViewController* targetVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
    
#warning 看你下级需不需要 nav
    UIViewController *newVC = [[UINavigationController alloc] initWithRootViewController:targetVC];
    [newVC setTransitioningDelegate:self];
    [newVC setModalPresentationStyle:UIModalPresentationCustom];
    
    [self presentViewController:newVC animated:YES completion:nil];
    
}

@end
