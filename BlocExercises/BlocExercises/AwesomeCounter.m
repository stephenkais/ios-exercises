//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    if (number<=otherNumber){
        NSInteger index = (long)number;
        NSString *solution = [NSString stringWithFormat:@"%ld", (long)number];
        index+=1;
        while(index<=otherNumber){
            solution = [solution stringByAppendingFormat:@"%ld", (long)index];
            index += 1;
        } return solution;
    } else {
            NSInteger index = (long)otherNumber;
        NSString *solution = [NSString stringWithFormat:@"%ld", (long)otherNumber];
        index +=1;
            while(index<=number){
                solution = [solution stringByAppendingFormat:@"%ld", (long)index];
                index+=1;
            }
        return solution;
        }
    return @"";
}

@end
