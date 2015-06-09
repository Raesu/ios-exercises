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
    /* WORK HERE */
    
    // This isn't passing the test. May try later. Does it want me to pass
    // the memory address or something? I have tried variations of copy, strong,
    // can't imagine it is weak. Let discuss on our next call.
    self.arrayToRemember = [NSMutableArray arrayWithArray:arrayToRemember];
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.array = [NSArray arrayWithArray:arrayToCopy];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.floatToRemember = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.arrayToRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return [self.array mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.floatToRemember;
}

@end