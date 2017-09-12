//
//  NSMutableArray+Addition.m
//  Study
//
//  Created by Markus Gage on 2017-09-02.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "NSMutableArray+Addition.h"

@implementation NSMutableArray (Addition)

- (instancetype)initWthSize:(NSUInteger)numItems
{
    self = [self init];
    if (self) {
        for (int i = 0; i < numItems; i++) {
            [self addObject:@0];
        }
    }
    return self;
}

- (instancetype)initWthSize:(NSUInteger)numItems with:(id)fillElement
{
    self = [self init];
    if (self) {
        for (int i = 0; i < numItems; i++) {
            [self addObject:fillElement];
        }
    }
    return self;
}
@end
