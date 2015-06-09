//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;

    switch (dollars) {
        case 4:
            itemToReturn = @"get out of my store";
            break;
        case 5:
            itemToReturn = @"have some gum";
            break;
        case 6:
            itemToReturn = @"have an apple";
            break;
        case 1000:
            itemToReturn = @"have an Apple computer";
            break;
        case 1000000000:
            itemToReturn = @"have The Big Apple";
            break;
    }
    
    /* WORK HERE */
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost = 24;
    
    return self.getsDiscount ? cost *= .75 : cost;
}

@end
