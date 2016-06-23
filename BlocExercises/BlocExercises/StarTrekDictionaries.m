//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *return_value = characterDictionary[@"favorite drink"];
    return return_value;
    return @"";
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSArray *extraction = [charactersArray valueForKey:@"favorite drink"];
    return extraction;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *myChangingCharacters = [characterDictionary mutableCopy];
    [myChangingCharacters setObject:(@"melo") forKey:@"quote"];
    return myChangingCharacters;
}

@end
