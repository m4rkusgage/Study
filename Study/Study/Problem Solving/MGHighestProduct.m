//
//  MGHighestProduct.m
//  Study
//
//  Given an array of integers, find the highest product you can get from three of them.
//
//  Follow up: How to find highest product of k of them
//
//  Created by Markus Gage on 2017-08-23.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGHighestProduct.h"

@implementation MGHighestProduct

+ (NSInteger)highestProductOfThreeNaive:(NSArray *)listNumbers
{
    //time: O(n^3)
    //space: O(1)
    if ([listNumbers count] < 3) @throw [NSException new];
    
    NSInteger highestProduct3 = INT_MIN;
    
    for (int i = 0; i < [listNumbers count] - 2; i++) {
        for (int j = i + 1; j < [listNumbers count] - 1; j++) {
            for (int k = j + 1; k < [listNumbers count]; k++) {
                NSInteger currentHighestProduct3 = [listNumbers[i] integerValue] * [listNumbers[j] integerValue] * [listNumbers[k] integerValue];
                highestProduct3 = MAX(highestProduct3, currentHighestProduct3);
            }
        }
    }
    
    return highestProduct3;
}

+ (NSInteger)highestProductOfThree:(NSArray *)listNumbers
{
    //time: O(n)
    //space: O(1)
    if ([listNumbers count] < 3) @throw [NSException new];
    
    NSInteger highest = MAX([listNumbers[0] integerValue], [listNumbers[1] integerValue]);
    NSInteger lowest = MIN([listNumbers[0] integerValue], [listNumbers[1] integerValue]);
    
    NSInteger highestProduct2 = [listNumbers[0] integerValue] * [listNumbers[1] integerValue];
    NSInteger lowestProduct2 = [listNumbers[0] integerValue] * [listNumbers[1] integerValue];
    
    NSInteger highestProduct3 = [listNumbers[0] integerValue] * [listNumbers[1] integerValue] * [listNumbers[2] integerValue];
    
    for (int i = 2; i < [listNumbers count]; i++) {
        highestProduct3 = MAX(highestProduct3, MAX(highestProduct2 * [listNumbers[i] integerValue], lowestProduct2 * [listNumbers[i] integerValue]));
        
        lowestProduct2 = MIN(lowestProduct2, MIN(lowest * [listNumbers[i] integerValue], highest * [listNumbers[i] integerValue]));
        highestProduct2 = MAX(highestProduct2, MAX(highest * [listNumbers[i] integerValue], lowest * [listNumbers[i] integerValue]));
        
        lowest = MIN(lowest, [listNumbers[i] integerValue]);
        highest = MAX(highest, [listNumbers[i] integerValue]);
    }
    
    return highestProduct3;
}
@end
