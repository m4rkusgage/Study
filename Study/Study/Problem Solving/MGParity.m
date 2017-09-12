//
//  MGParity.m
//  Study
//
//  Created by Markus Gage on 2017-08-23.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGParity.h"

@implementation MGParity

+ (NSInteger)computeParity:(NSInteger)number
{
    NSInteger count = 0;
    if (number < 0) {
        count++;
        number = -number;
    }
    
    while (number) {
        count++;
        number = number & (number - 1);
    }
    
    return count;
}

@end
