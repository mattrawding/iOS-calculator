//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Matthew Rawding on 4/7/13.
//  Copyright (c) 2013 Matthew Rawding. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    double memory;
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;

@end
