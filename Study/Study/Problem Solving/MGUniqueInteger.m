//
//  MGUniqueInteger.m
//  Study
//
//  Given an array of integers, which contains many duplicates and one unique integer, find the unique integer
//
//  Created by Markus Gage on 2017-08-23.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGUniqueInteger.h"

@implementation MGUniqueInteger

+ (NSInteger)findUnique:(NSArray *)listIDs
{
    if (!listIDs || [listIDs count] == 0) @throw [NSException new];
    if ([listIDs count] == 1) return [listIDs[0] integerValue];
    
    NSInteger uniqueID = 0;
    for (int i = 0; i < [listIDs count]; i++) {
        uniqueID ^= [listIDs[i] integerValue];
    }
    return uniqueID;
}

+ (NSArray *)findTwoUnique:(NSArray *)listIDs
{
    if (!listIDs || [listIDs count] < 2) @throw [NSException new];
    if ([listIDs count] == 2) return [NSArray arrayWithObjects:listIDs[0],listIDs[1], nil];
    
    NSInteger xor = 0;
    for (int i = 0; i < [listIDs count]; i++) {
        xor ^= [listIDs[i] integerValue];
    }
    
    NSInteger xorRightMostSetBit = xor & ~(xor - 1);
    NSInteger firstUnique = 0;
    NSInteger secondUnique = 0;
    
    for (int i = 0; i < [listIDs count]; i++) {
        if ([listIDs[i] integerValue] & xorRightMostSetBit ) {
            firstUnique ^= [listIDs[i] integerValue];
        } else {
            secondUnique ^= [listIDs[i] integerValue];
        }
    }
    
    return [NSArray arrayWithObjects:@(firstUnique), @(secondUnique), nil];
}
@end
