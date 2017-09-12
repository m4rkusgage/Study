//
//  MGMakeChangeProblem.m
//  Study
//
//  Created by Markus Gage on 2017-08-25.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGMakeChangeProblem.h"

@implementation MGMakeChangeProblem

+ (NSInteger)makeChange:(NSInteger)money with:(NSArray *)coins {
    return [self makeChange:money with:coins atIndex:0];
}

+ (NSInteger)makeChange2:(NSInteger)money with:(NSArray *)coins
{
    NSMutableDictionary <NSString *, NSNumber *> *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setObject:@5 forKey:@"C"];
    [dictionary setObject:@2 forKey:@"b"];
    dictionary[@"a"] = @6;
    NSLog(@"dictionary: %@",dictionary[@"a"]);
    NSMutableArray *ways = [[NSMutableArray alloc] init];

    NSInteger counter = money + 1;
    while (counter) {
        [ways addObject:@0];
        counter--;
    }
    
    for (int index = 0; index < [coins count]; index++) {
        for (int coin = [coins[index] intValue]; coin <= money; coin++) {
            NSInteger numberWays = [ways[coin] integerValue] + [ways[coin - [coins[index] integerValue]] integerValue];
            [ways setObject:@(numberWays)   atIndexedSubscript:coin];
        }
    }
    return [ways[money] integerValue];
}

+ (NSInteger)makeChange:(NSInteger)money with:(NSArray *)coins atIndex:(NSInteger)index {
    if (!money) return 1;
    if (index >= [coins count]) return 0;
    
    NSInteger amountWithCoins = 0;
    NSInteger numWays = 0;
    
    while (amountWithCoins <= money) {
        NSInteger remaining = money - amountWithCoins;
        numWays += [self makeChange:remaining with:coins atIndex:index+1];
        amountWithCoins += [coins[index] integerValue];
    }
    
    return numWays;
}

+ (NSInteger)getMinChange:(NSInteger)money with:(NSArray *)coins
{
   return [self getMinChange:money with:coins atIndex:0];
}

+ (NSInteger)getMinChange:(NSInteger)money with:(NSArray *)coins atIndex:(NSInteger)index
{
    NSInteger infinity = INT_MAX;
    if (money == 0) return 0;
    if (index >= [coins count]) return infinity;
    
    if ([coins[index] integerValue] > money) {
        return [self getMinChange:money with:coins atIndex:index-1];
    }
    
    return MIN([self getMinChange:money with:coins atIndex:index-1], [self getMinChange:money - [coins[index] integerValue] with:coins atIndex:index-1] + 1);
    
}

@end
