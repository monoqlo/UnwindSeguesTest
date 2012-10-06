//
//  FirstViewController.m
//  UnwindSeguesTest
//
//  Created by 米山 隆貴 on 2012/10/04.
//  Copyright (c) 2012年 米山 隆貴. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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
- (IBAction)done:(UIStoryboardSegue *)segue {
    NSLog(@"done");
}

@end
