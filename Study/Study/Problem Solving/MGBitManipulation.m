//
//  MGBitManipulation.m
//  Study
//
//  Created by Markus Gage on 2017-08-23.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGBitManipulation.h"

@implementation MGBitManipulation
+ (void)given:(NSInteger)integer swapBit:(NSInteger)ithIndex with:(NSInteger)kthIndex
{
    NSInteger bitI = (integer >> ithIndex) & 1;
    NSInteger bitJ = (integer >> kthIndex) & 1;
    
    if (bitI != bitJ) {
        integer = (1 << bitI) ^ integer;
        integer = (1 << bitJ) ^ integer;
    }
}
@end
