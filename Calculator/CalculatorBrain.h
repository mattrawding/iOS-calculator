//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Matthew Rawding on 4/7/13.
//  Copyright (c) 2013 Matthew Rawding. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
    @private NSString *waitingOperation;
    @private double waitingOperand;
    @private double memory;
}

@property double operand;

- (double)performOperation:(NSString *)operation;

@end
