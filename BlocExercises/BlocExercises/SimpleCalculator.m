//
//  SimpleCalculator.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "SimpleCalculator.h"

@implementation SimpleCalculator

- (NSInteger) increaseNumberBy1:(NSInteger) number {
    NSInteger stephen = number + 1;
    return stephen;
}

- (NSInteger) addNumber:(NSInteger) number1 toNumber:(NSInteger) number2 {
    NSInteger sum = number1 + number2;
    return sum;
}

- (NSInteger) remainderOfNumber:(NSInteger) dividend dividedByNumber:(NSInteger) divisor {
    NSInteger remainder = (dividend % divisor);
    return remainder;
}

@end
