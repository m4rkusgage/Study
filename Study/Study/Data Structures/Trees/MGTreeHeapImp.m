//
//  MGTreeHeapImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-29.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGTreeHeapImp.h"

@interface MGTreeHeapImp ()
{
    MGHeap _heapType;
}
@property (strong, nonatomic) NSMutableArray *heapArray;
@end

@implementation MGTreeHeapImp

- (instancetype)init
{
    self = [super init];
    if (self) {
        _heapType = MGHeapMax;
        self.heapArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype)initForHeap:(MGHeap)heapType
{
    self = [super init];
    if (self) {
        _heapType = heapType;
        self.heapArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)insert:(id)item
{
    [self.heapArray addObject:item];
    [self bubbleUp:self.heapArray.count-1];
}

- (void)delete:(id)item
{
    NSInteger foundIndex = [self findIndexOF:item];
    if (foundIndex >= 0) {
        [self swap:foundIndex with:self.heapArray.count-1];
        [self.heapArray removeLastObject];
        [self bubbleDown:foundIndex];
    }
}

- (id)getMin
{
    return self.heapArray[0];
}

- (id)getMax
{
    return self.heapArray[0];
}

- (NSInteger)findIndexOF:(id)item
{
    for (int i = 0; i < self.heapArray.count - 1; i++) {
        if (self.heapArray[i] == item) {
            return i;
        }
    }
    return -1;
}

- (void)removeMin
{
    [self swap:0 with:self.heapArray.count-1];
    [self.heapArray removeLastObject];
    
    [self bubbleDown:0];
}

- (void)removeMax
{
    [self swap:0 with:self.heapArray.count-1];
    [self.heapArray removeLastObject];
    
    [self bubbleDown:0];
}

- (void)bubbleUp:(NSInteger)index
{
    int currentIndex = (int)index;
    int parentIndex = (int)(index-1)/2;
    
    if (_heapType == MGHeapMin) {
        if (currentIndex > 0 && [self.heapArray[parentIndex] compare:self.heapArray[currentIndex]] > 0) {
            [self swap:parentIndex with:currentIndex];
            [self bubbleUp:parentIndex];
        }
    } else {
        if (currentIndex > 0 && [self.heapArray[parentIndex] compare:self.heapArray[currentIndex]] < 0) {
            [self swap:parentIndex with:currentIndex];
            [self bubbleUp:parentIndex];
        }
    }
}

- (void)bubbleDown:(NSInteger)index
{
    int currentIndex = (int)index;
    int leftIndex = (int)index*2 + 1;
    int rightIndex = (int)(index*2) + 2;
    
    if (rightIndex < self.heapArray.count - 1 || leftIndex < self.heapArray.count - 1) {
        
        if (_heapType == MGHeapMin) {
            if ([self.heapArray[currentIndex] compare:self.heapArray[leftIndex]] > 0) {
                [self swap:currentIndex with:leftIndex];
                [self bubbleDown:leftIndex];
            }
            if (rightIndex < self.heapArray.count && [self.heapArray[currentIndex] compare:self.heapArray[rightIndex]] > 0) {
                [self swap:currentIndex with:rightIndex];
                [self bubbleDown:rightIndex];
            }
        } else {
            if ([self.heapArray[currentIndex] compare:self.heapArray[leftIndex]] < 0) {
                [self swap:currentIndex with:leftIndex];
                [self bubbleDown:leftIndex];
            }
            if (rightIndex < self.heapArray.count && [self.heapArray[currentIndex] compare:self.heapArray[rightIndex]] < 0) {
                [self swap:currentIndex with:rightIndex];
                [self bubbleDown:rightIndex];
            }
        }
    }
    
}

- (void)swap:(NSInteger)aIndex with:(NSInteger)bIndex
{
    id temp = self.heapArray[aIndex];
    self.heapArray[aIndex] = self.heapArray[bIndex];
    self.heapArray[bIndex] = temp;
}

@end
