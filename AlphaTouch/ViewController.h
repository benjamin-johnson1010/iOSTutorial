//
//  ViewController.h
//  AlphaTouch
//
//  Created by BENJAMIN JOHNSON on 12/2/16.
//  Copyright © 2016 BENJAMIN JOHNSON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;
-(void)buttonPressed:(UIButton *)sender;

@end

