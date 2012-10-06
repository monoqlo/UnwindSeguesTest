//
//  ResetViewController.m
//  testExit
//
//  Created by 米山 隆貴 on 2012/10/04.
//  Copyright (c) 2012年 米山 隆貴. All rights reserved.
//

#import "ResetVIewController.h"
#import "FirstViewController.h"

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
    // Unwind用のメソッドは返り値がIBActionで、引数がひとつのUIStoryboardSegueであればメソッド名はなんでもよい。
    // 左側の丸が白丸のままで繋がっていないように見えるが問題ない
    NSLog(@"reset");
    NSLog(@"name:%@", _name);
}

- (BOOL)canPerformUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender {
    
    NSLog(@"action:%s", (char *)action);
    NSLog(@"formVC:%@", fromViewController);
    NSLog(@"sender:%@", sender);
    
    UIButton *resetButton = (UIButton *)sender;
    
    // 今はてきとーにcurrentTitleで分岐してるが、このようにsenderの要素によって分けたりもできる
    if ([resetButton.currentTitle isEqualToString:@"Reset"]) {
        NSLog(@"canPerformUnwindSegueAction:YES");
        return YES;
    }
    
    NSLog(@"canPerformUnwindSegueAction:NO");
    return NO;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // StoryBoard上で Unwind Segue にidentifirを振ることができる
    if ([segue.identifier isEqualToString:@"done"]) {
        FirstViewController *firstVC = (FirstViewController *)[segue destinationViewController];
        firstVC.name = @"hktechno";
    }
}

@end
