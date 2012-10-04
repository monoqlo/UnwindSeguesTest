//
//  ResetVIewController.m
//  testExit
//
//  Created by 米山 隆貴 on 2012/10/04.
//  Copyright (c) 2012年 米山 隆貴. All rights reserved.
//

#import "ResetVIewController.h"

@interface ResetVIewController ()

@end

@implementation ResetVIewController

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

- (IBAction)reset:(UIStoryboardSegue *)segue {
    NSLog(@"reset");
}


@end
