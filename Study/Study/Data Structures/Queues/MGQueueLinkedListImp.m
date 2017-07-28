//
//  MGQueueLinkedListImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGQueueLinkedListImp.h"
#import "MGLinkedListSingleTailImp.h"

@interface MGQueueLinkedListImp ()
@property (strong, nonatomic) MGLinkedListSingleTailImp *linkedList;
@end

@implementation MGQueueLinkedListImp

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.linkedList = [[MGLinkedListSingleTailImp alloc] init];
    }
    return self;
}

- (void)enqueue:(id)item
{
    [self.linkedList insertFront:item];
}

- (id)dequeue
{
    MGNode *node = [self.linkedList getLastElement];
    [self.linkedList removeBack];
    
    return node.element;
}

- (BOOL)isEmpty
{
    return ![self.linkedList size];
}
@end
