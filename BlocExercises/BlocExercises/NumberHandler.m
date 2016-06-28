//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int rv = [number intValue];
    int returnvalue = rv*2;
    number = [NSNumber numberWithInt:returnvalue];
    return number;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *hai = [[NSMutableArray alloc] init];
    if (number > otherNumber){
        int index = (int) otherNumber;
        while (index<= number){
            [hai addObject:[NSNumber numberWithInt:index]];
            index+=1;
        }} else {
            int index = (int) number;
            while (index<= otherNumber){
                [hai addObject:[NSNumbgier numberWithInt:index]];
                index+=1;
            }
        }
    
    NSArray *array = [hai copy];
    return array;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSSortDescriptor* sortOrder = [NSSortDescriptor sortDescriptorWithKey: @"self"
                                                                ascending: YES];
    NSArray *sorted_array = [arrayOfNumbers sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortOrder]];
    NSInteger bai =[sorted_array[0] integerValue];
    return bai;
}

@end
