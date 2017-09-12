//
//  MGStackArrayImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGStackArrayImp.h"

#define DEFAULT_MAX_CAPACITY 50

@interface MGStackArrayImp ()
{
    NSInteger _capacity;
}
@property (strong, nonatomic) NSMutableArray *stackArray;
@end

@implementation MGStackArrayImp

- (instancetype)initWithCapacity:(int)capacity
{
    self = [super init];
    if (self) {
        _capacity = capacity;
        self.stackArray = [[NSMutableArray alloc] initWithCapacity:_capacity];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _capacity = DEFAULT_MAX_CAPACITY;
        self.stackArray = [[NSMutableArray alloc] initWithCapacity:_capacity];
    }
    return self;
}

- (void)push:(id)item
{
    if ([self size] == _capacity) {
        @throw [NSException new];
    }
    
    [self.stackArray addObject:item];
}

- (id)popItem
{
    if (!self.stackArray.count) {
        @throw [NSException new];
    }
    
    id element = [self.stackArray lastObject];
    [self.stackArray removeLastObject];
    return element;
}

- (id)topItem
{
    if (!self.stackArray.count) {
        @throw [NSException new];
    }
    
    id element = [self.stackArray lastObject];
    return element;
}

- (BOOL)isEmpty
{
    return !self.stackArray.count;
}

- (NSInteger)size
{
    return self.stackArray.count;
}

- (void)display
{
    if ([self isEmpty]) {
        NSLog(@"Empty Stack");
    } else {
        NSMutableString *stackString = [[NSMutableString alloc] initWithString:@"\nStack: \n{"];
        for (int i = (int)self.stackArray.count - 1; i >= 0; i--) {
            [stackString appendFormat:@"%@\n",self.stackArray[i]];
        }
        NSLog(@"%@\n}",stackString);
    }
}

@end
