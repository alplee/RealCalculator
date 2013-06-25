//
//  calculateViewController.h
//  RealCalculator
//
//  Created by 李鹏 on 13-6-25.
//  Copyright (c) 2013年 李鹏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface calculateViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;
- (IBAction)digitPressed:(UIButton *)sender;

-(void)digitProcess : (int)digit;
-(void)opProcess : (char)theOp;
-(void)storefraction;

- (IBAction)clickPlus:(UIButton *)sender;
- (IBAction)clickSub:(UIButton *)sender;
- (IBAction)clickMu:(UIButton *)sender;
- (IBAction)clickDevi:(UIButton *)sender;

- (IBAction)clickEqu:(UIButton *)sender;
- (IBAction)clickOver:(UIButton *)sender;
- (IBAction)clickClear:(UIButton *)sender;


@end
