//
//  ViewController.h
//  Calculator
// 
//  Created by Matthew Rawding on 4/7/13.
//  Copyright (c) 2013 Matthew Rawding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface ViewController : UIViewController {
    @private IBOutlet UILabel *display;
    @private BOOL userIsInTheMiddleOfTypingANumber;
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;
- (IBAction)decimalPressed;

@end
