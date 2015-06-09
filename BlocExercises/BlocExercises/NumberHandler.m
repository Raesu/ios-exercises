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
    /* WORK HERE */
    return [[NSNumber alloc] initWithInteger:[number integerValue] * 2];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *array = [@[] mutableCopy];
    
    NSInteger lower = number;
    NSInteger upper = otherNumber;
    
    if (number > otherNumber) {
        upper = number;
        lower = otherNumber;
    }
    
    for (NSInteger i = lower; i <= upper; i++) {
        [array addObject:[NSNumber numberWithInteger:i]];
    }
    
    return array;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
//    NSInteger lowest = [arrayOfNumbers[0] integerValue];
//    
//    for (NSNumber *i in arrayOfNumbers) {
//        if ([i integerValue] < lowest) {
//            lowest = [i integerValue];
//        }
//    }
//    return lowest;
    
    // found this on git hub, slick but what is KeyPath?
    NSNumber *min=[arrayOfNumbers valueForKeyPath:@"@min.doubleValue"];
    return [min integerValue];
    
    // Can't get this to work
    // NSMutableArray *newArray = [arrayOfNumbers mutableCopy];
    // NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
    // [newArray sortedArrayUsingDescriptors:@[sorter]];
    // return [[newArray lastObject] integerValue];
}

@end
