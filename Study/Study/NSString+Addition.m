//
//  NSString+Addition.m
//  Study
//
//  Created by Markus Gage on 2017-09-04.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "NSString+Addition.h"

@implementation NSString (Addition)

- (NSMutableArray *)characterArray
{
    NSMutableArray *charArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.length; i++) {
        unichar character = [self characterAtIndex:i];
        [charArray addObject:@(character)];
    }
    return charArray;
}

- (NSString *)charAt:(NSInteger)index
{
    unichar character = [self characterAtIndex:index];
    return [NSString stringWithCharacters:&character length:1];
}
@end
