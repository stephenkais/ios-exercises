//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.remembered_array = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.copied_array = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.remembered_float = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    NSMutableArray *return_array = self.remembered_array;
    return return_array;
}

- (NSMutableArray *) arrayYouShouldCopy {
    NSMutableArray *return_array = self.copied_array;
    return return_array;
}

- (CGFloat) floatYouShouldRemember {
    CGFloat float_return = self.remembered_float;
    return float_return;
}

@end