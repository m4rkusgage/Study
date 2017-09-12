//
//  MGPalindrome.m
//  Study
//
//  Created by Markus Gage on 2017-08-23.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGPalindrome.h"

@implementation MGPalindrome

+ (BOOL)isIntegerPalindrom:(NSInteger)number
{
    if (!number) @throw [NSException new];
    if (!(number % 10)) return YES;
    
    NSInteger copyNumber = number;
    NSInteger reverseNumber = 0;
    
    while (copyNumber) {
        reverseNumber = reverseNumber * 10 + (copyNumber % 10);
        copyNumber /= 10;
    }
    
    if (reverseNumber == number) return YES;
    
    return NO;
}

@end
