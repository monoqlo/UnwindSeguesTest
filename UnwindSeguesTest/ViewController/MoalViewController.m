//
//  MoalViewController.m
//  UnwindSeguesTest
//
//  Created by 米山 隆貴 on 2012/10/05.
//  Copyright (c) 2012年 米山 隆貴. All rights reserved.
//

#import "MoalViewController.h"

@interface MoalViewController ()

@end

@implementation MoalViewController

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

- (IBAction)dissmissModalView:(id)sender {
    [[self presentingViewController] dismissViewControllerAnimated:YES completion:nil];
    
    // selfに飛ばしてやってもpresentingViewControllerにメッセージを送ってくれるらしい
    //[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)backToModal:(UIStoryboardSegue *)segue {
    NSLog(@"backToModal");
}

@end
