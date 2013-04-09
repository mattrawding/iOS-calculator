//
//  ViewController.m
//  Calculator
//
//  Created by Matthew Rawding on 4/7/13.
//  Copyright (c) 2013 Matthew Rawding. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (CalculatorBrain *)brain
{
    if(!brain) brain = [[CalculatorBrain alloc] init];
    return brain;
}

- (IBAction)decimalPressed:(UIButton *)sender
{
    if (userIsInTheMiddleOfTypingANumber)
    {
        // if the user is already typing a number, make sure there are no decimals
        if ([[display text] rangeOfString:@"."].location == NSNotFound)
        {
            [display setText:[[display text] stringByAppendingString:@"."]];
        }
    }
    else
    {
        // if the user is not already typing a number, set display to "0."
        [display setText:@"0."];
        userIsInTheMiddleOfTypingANumber = YES;
    }

}

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [[sender titleLabel] text];
    
    if (userIsInTheMiddleOfTypingANumber)
    {
        [display setText:[[display text] stringByAppendingString:digit]];
    }
    else
    {
        [display setText:digit];
        userIsInTheMiddleOfTypingANumber = YES;
    }
}

- (IBAction)operationPressed:(UIButton *)sender
{
    if (userIsInTheMiddleOfTypingANumber) {
        [[self brain] setOperand:[[display text] doubleValue]];
        userIsInTheMiddleOfTypingANumber = NO;
    }
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g", result]];
}

@end
