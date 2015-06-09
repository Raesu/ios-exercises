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
    /* WORK HERE */
    
    NSMutableString *newString = [@"" mutableCopy];

    NSInteger lower = number;
    NSInteger upper = otherNumber;
    
    if (number > otherNumber) {
        lower = otherNumber;
        upper = number;
    }
    
    for (NSInteger i = lower; i <= upper; i++) {
        [newString appendFormat:@"%ld", (long)i];
    }
    
    return newString;
}

@end
