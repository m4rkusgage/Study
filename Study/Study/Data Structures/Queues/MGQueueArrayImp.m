//
//  MGQueueArrayImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGQueueArrayImp.h"

#define DEFAULT_MAX_CAPACITY 50

@interface MGQueueArrayImp ()
{
    NSInteger _capacity;
    NSInteger _size;
    NSInteger _front;
    NSInteger _rear;
    
}
@property (strong, nonatomic) NSMutableArray *arrayQueue;
@end

@implementation MGQueueArrayImp

- (id)initWithCapacity:(NSInteger)capacity
{
    self = [super init];
    if (self) {
        _capacity = capacity;
        _front = -1;
        _rear = -1;
        _size = 0;
        self.arrayQueue = [[NSMutableArray alloc] initWithCapacity:_capacity];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _capacity = DEFAULT_MAX_CAPACITY;
        self.arrayQueue = [[NSMutableArray alloc] initWithCapacity:_capacity];
    }
    return self;
}

- (void)enqueue:(id)item
{
    if (_size == _capacity) {
        @throw [NSException new];
    }
    _rear = (_rear+1)%_capacity;
    self.arrayQueue[_rear] = item;
    if (_front == -1) {
        _front = _rear;
    }
    _size++;
}

- (id)dequeue
{
    if (_front == -1) {
        @throw [NSException new];
    }
    id element = self.arrayQueue[_front];
    self.arrayQueue[_front] = [NSNull null];
    _front = (_front+1)%_capacity;
    _size--;
    if ([self isEmpty]) {
        _front = -1;
        _rear = -1;
    }
    return element;
}

- (BOOL)isEmpty
{
    return !_size;
}

@end
