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
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    // Odd stuff here. Descriptor, @selector, and calling the descriptor with @[ ] syntax
    // I guess the @[ ] syntax since it could accept an array of descriptors?
    NSSortDescriptor *sorter = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    return [characterArray sortedArrayUsingDescriptors:@[sorter]];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    // Also very new to the predicate object
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    NSArray *result = [characterArray filteredArrayUsingPredicate:pred];
    return result.count ? YES: NO;
}

@end
