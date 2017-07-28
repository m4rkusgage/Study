//
//  MGQueueArrayImp.h
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGQueue.h"

@interface MGQueueArrayImp<T> : NSObject<MGQueue>
- initWithCapacity:(NSInteger)capacity;
- (void)enqueue:(T)item;
- (T)dequeue;
@end
