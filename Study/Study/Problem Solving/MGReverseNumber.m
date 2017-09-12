//
//  MGReverseNumber.m
//  Study
//
//  Given an integer, reverse it.
//
//  Created by Markus Gage on 2017-08-23.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGReverseNumber.h"
#import "MGStackLinkListImp.h"

@implementation MGReverseNumber

+ (NSInteger)reverseInteger:(NSInteger)number
{
    if (!number) return number;
    
    BOOL isNegative = NO;
    
    if (number < 0) {
        isNegative = YES;
        number = -number;
    }
    
    NSInteger reversedInteger = 0;
    while (number) {
        NSInteger digit = number % 10;
        reversedInteger = reversedInteger * 10 + digit;
        number /= 10;
    }
    
    return (isNegative)?-reversedInteger:reversedInteger;
}
@end
