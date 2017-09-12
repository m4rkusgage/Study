//
//  MGTreeHeapImp.h
//  Study
//
//  Created by Mark Gage on 2017-07-29.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGTree.h"

typedef enum : NSUInteger {
    MGHeapMin,
    MGHeapMax
} MGHeap;

@interface MGTreeHeapImp<T> : NSObject<MGTree>
- (instancetype)initForHeap:(MGHeap)heapType;
- (void)insert:(T)item;
- (void)delete:(T)item;
- (T)getMin;
- (T)getMax;
- (void)removeMin;
- (void)removeMax;
@end
