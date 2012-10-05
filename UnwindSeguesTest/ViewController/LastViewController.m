//
//  LastViewController.m
//  UnwindSeguesTest
//
//  Created by 米山 隆貴 on 2012/10/05.
//  Copyright (c) 2012年 米山 隆貴. All rights reserved.
//

#import "LastViewController.h"
#import "FirstViewController.h"
#import "ResetVIewController.h"

@interface LastViewController ()

@end

@implementation LastViewController

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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // StoryBoard上で Unwind Segue にidentifirを振ることができる
    if ([segue.identifier isEqualToString:@"reset"]) {
        ResetViewController *resetVC = (ResetViewController *)[segue destinationViewController];
        resetVC.name = @"monoqlo";
    } else if ([segue.identifier isEqualToString:@"done"]) {
        FirstViewController *firstVC = (FirstViewController *)[segue destinationViewController];
        firstVC.name = @"chocopuyo";
    }
}

@end
