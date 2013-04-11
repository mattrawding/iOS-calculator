//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Matthew Rawding on 4/7/13.
//  Copyright (c) 2013 Matthew Rawding. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain
@synthesize operand;

- (void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if ([@"*" isEqualToString:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if ([@"-" isEqual:waitingOperation])
    {
        operand = waitingOperand - operand;
    }
    else if ([@"/" isEqual:waitingOperation])
    {
        if (operand) {
            operand = waitingOperand / operand;
        }
    }
}

- (double)performOperation:(NSString *)operation
{
    if ([operation isEqualToString:@"sqrt"])
    {
        operand = sqrt(operand);
    }
    else if ([@"+/-" isEqual:operation])
    {
        operand = - operand;
    }
    else if ([@"1/x" isEqual:operation])
    {
        if (operand != 0)
        {
            operand = 1/operand;
        }
    }
    else if ([@"sin" isEqual:operation])
    {
        operand = sin(operand);
    }
    else if ([@"cos" isEqual:operation])
    {
        operand = cos(operand);
    }
    else if ([@"Store" isEqual:operation])
    {
        memory = operand;
    }
    else if ([@"Recall" isEqual:operation])
    {
        operand = memory;
    }
    else if ([@"Mem+" isEqual:operation])
    {
        memory += operand;
    }
    else if ([@"C" isEqual:operation])
    {
        operand = 0;
        memory = 0;
        waitingOperation = nil;
    }
    else
    {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    
    return operand;
}

@end
