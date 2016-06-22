//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favestring = @"My favorite cheese is ";
    NSString *return_value = [favestring stringByAppendingFormat:@"%@.", cheeseName];
    return return_value;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /*
     You might want an if/else statement like this:
     
     (You will learn more about if/else statements in a later checkpoint.)
     */
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
            NSString *return_value = [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@""];
        if ([return_value length] == [cheeseName length]){
            
            return_value = [cheeseName stringByReplacingOccurrencesOfString:@" Cheese" withString:@""];
            return return_value;
        } else {
            return return_value;
        }
        } else {
        NSString *return_value = cheeseName;
        return return_value;
    }

    /*
     There is also a solution that doesn't require the if/else statement.
     
     Try to find both solutions. Discuss the different approaches with
     your mentor.
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *cheeses = [NSString stringWithFormat:@"%li", (long)cheeseCount];
        NSString *return_value = [cheeses stringByAppendingString:@" cheese"];
        return return_value;
        
    } else {
        NSString *cheeses = [NSString stringWithFormat:@"%li", (long)cheeseCount];
        NSString *return_value = [cheeses stringByAppendingString:@" cheeses"];
        return return_value;
    }
    
    return nil;
}

@end
