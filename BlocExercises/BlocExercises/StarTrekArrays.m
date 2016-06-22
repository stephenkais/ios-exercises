//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *starTrekArray = [characterString componentsSeparatedByString:@";"];
    return starTrekArray;
    return @[];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *characterMutableArray = [NSMutableArray arrayWithArray:characterArray];
    NSString *starTrekkies = [characterMutableArray componentsJoinedByString:@";"];
    return starTrekkies;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *characterMutableArray = [NSMutableArray arrayWithArray:characterArray];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [characterMutableArray sortUsingDescriptors:@[sortDescriptor]];
    return characterMutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *characterMutableArray = [NSMutableArray arrayWithArray:characterArray];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [characterMutableArray filterUsingPredicate:containsWorf];
    if ([characterMutableArray count] == 0){
        return NO; } else {
            return YES;
        }
    return NO;
}

@end
