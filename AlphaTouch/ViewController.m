//
//  ViewController.m
//  AlphaTouch
//
//  Created by BENJAMIN JOHNSON on 12/2/16.
//  Copyright © 2016 BENJAMIN JOHNSON. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame =CGRectMake(100, 100, 100, 44);
    [firstButton setTitle:@"Click me!" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    [firstButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)loadView
{
   CGRect viewRect = [[UIScreen mainScreen]bounds];
UIView *view = [[UIView alloc]initWithFrame:viewRect];
    self.view = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Started touching the screen");
}
-(void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    self.view.alpha = ((double)arc4random()/0X100000000);
}
@end
