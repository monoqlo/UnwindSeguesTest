//
//  ResetViewController.m
//  testExit
//
//  Created by 米山 隆貴 on 2012/10/04.
//  Copyright (c) 2012年 米山 隆貴. All rights reserved.
//

#import "ResetVIewController.h"

@interface ResetViewController ()

@end

@implementation ResetViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segue
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    NSLog(@"shouldPerformSegueWithIdentifier");
    return YES; // NOだと前後問わずSegueが働かない
}

- (IBAction)reset:(UIStoryboardSegue *)segue {
    // 返り値がIBActionで、引数がひとつのUIStoryboardSegueであればメソッド名はなんでもよい。
    NSLog(@"reset");
    NSLog(@"name:%@", _name);
}

@end
