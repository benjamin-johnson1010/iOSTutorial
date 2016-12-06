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
    [firstButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    [firstButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    secondButton.frame = CGRectMake(100, 300, 100, 44);
    [secondButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    [self.view addSubview:secondButton];
    [secondButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
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
    if([sender isEqual:self.fiftyPercentButton]){
        self.view.alpha = .5;
    }else{
        self.view.alpha = 1;
    }
}
@end
