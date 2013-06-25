//
//  calculateViewController.m
//  RealCalculator
//
//  Created by 李鹏 on 13-6-25.
//  Copyright (c) 2013年 李鹏. All rights reserved.
//

#import "calculateViewController.h"

@interface calculateViewController ()
@end

@implementation calculateViewController
{
    char op;
    int currentnumber;
    BOOL isnumberator,firstop;
    Calculator * myCalculator;
    NSMutableString * displayString;
    
}
@synthesize display = _display;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    firstop = YES;
    isnumberator = YES;
    myCalculator = [[Calculator alloc] init];
    displayString = [NSMutableString stringWithCapacity:40];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setDisplay:nil];
    
    [super viewDidUnload];
}


- (IBAction)digitPressed:(UIButton *)sender {
    int digit = sender.tag;
    [self digitProcess:digit];
    
}
-(void)digitProcess:(int)digit
{
    currentnumber = 10 * currentnumber + digit;
    [displayString appendString:[NSString stringWithFormat:@"%i",digit]];
    
}
-(void)opProcess:(char)theOp
{
    NSString * opStr;
    
    switch (op) {
        case '+':
            opStr = @"+";
            break;
        case '-':
            opStr = @"-";
            break;
        case '*':
            opStr = @"*";
            break;
        case '//':
            opStr = @"/";
            break;
            
        default:
            break;
    }
    firstop = NO;
    [self storefraction];
    isnumberator = YES;
    
    _display.text = displayString;
    
}

- (IBAction)clickPlus:(id)sender {
}

- (IBAction)clickSub:(UIButton *)sender {
}

- (IBAction)clickMu:(UIButton *)sender {
}

- (IBAction)clickDevi:(id)sender {
}

- (IBAction)clickEqu:(UIButton *)sender {
}

- (IBAction)clickOver:(UIButton *)sender {
}

- (IBAction)clickClear:(UIButton *)sender {
}
@end
