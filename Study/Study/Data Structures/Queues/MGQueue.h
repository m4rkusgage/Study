//
//  MGQueue.h
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MGQueue <NSObject>
- (void)enqueue:(id)item;
- (id)dequeue;
- (BOOL)isEmpty;
- (void)display;
@end
